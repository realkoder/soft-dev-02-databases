require 'dotenv/load'
require 'mysql2'
require 'active_support/core_ext/object/blank'
require 'neo4j/driver'

# ===========================
# ESTABLISH CONNECTION
# ===========================

mysql_client = Mysql2::Client.new(
  host: ENV['MYSQL_HOST'],
  username: ENV['MYSQL_USER'],
  password: ENV['MYSQL_PASSWORD'],
  database: ENV['MYSQL_DATABASE'],
  port: ENV['MYSQL_PORT'],
)

neo4j_driver = Neo4j::Driver::GraphDatabase.driver(ENV['NEO4J_URI'], Neo4j::Driver::AuthTokens.basic(ENV['NEO4J_USER'], ENV['NEO4J_PASSWORD']))

# ===========================
# RESETTING NEO4J clean slate
# ===========================

puts 'Resetting NEO4J DB'

neo4j_driver.session do |session|
  session.write_transaction do |tx|
    tx.run("MATCH (n) DETACH DELETE n")
  end
end

puts 'NEO4J DB is reset to a clean slate'

# ===========================
# MIGRATE USERS
# ===========================

puts "Migrating users..."

users = mysql_client.query("SELECT * FROM users")

neo4j_driver.session do |session|
  users.each do |row|
    session.write_transaction do |tx|
      tx.run(
        "CREATE (u:User {
        id: $id,
        first_name: $first_name,
        last_name: $last_name,
        email: $email,
        provider: $provider,
        uid: $uid,
        password_digest: $password_digest,
        image_src: $image_src,
        bio: $bio,
        last_signed_in_at: $last_signed_in_at,
        created_at: $created_at,
        updated_at: $updated_at
      })",
        id: row['id'],
        first_name: row['first_name'],
        last_name: row['last_name'],
        email: row['email'],
        provider: row['provider'],
        uid: row['uid'],
        password_digest: row['password_digest'],
        image_src: row['image_src'],
        bio: row['bio'],
        last_signed_in_at: row['last_signed_in_at'],
        created_at: row['created_at'],
        updated_at: row['updated_at']
      )
    end
  end
end

puts "#{users.size} users migrated from MySQL to Neo4j"

# ===========================
# MIGRATE FEEDBACKS
# ===========================

puts "Migrating feedbacks..."

feedbacks = mysql_client.query("SELECT * FROM feedbacks")

neo4j_driver.session do |session|
  feedbacks.each do |row|
    session.write_transaction do |tx|
      tx.run(
        "CREATE (f:Feedback {
        name: $name,
        message: $message,
        category: $category,
        created_at: $created_at,
        updated_at: $updated_at
      })",
        name: row['name'],
        email: row['email'],
        message: row['message'],
        category: row['category'],
        created_at: row['created_at'],
        updated_at: row['updated_at']
      )
    end
  end
end

puts "#{feedbacks.size} feedbacks migrated from MySQL to Neo4j"

# ===========================
# MIGRATE RECIPES
# ===========================

puts "Migrating recipes..."

recipes = mysql_client.query("SELECT * FROM recipes")

neo4j_driver.session do |session|
  recipes.each do |row|
    # ADDING INGREDIENTS TO RECIPE
    ingredients_for_recipe = mysql_client.query("SELECT * FROM ingredients WHERE recipe_id = '#{row['id']}'")
    user_id = users.to_a.sample['id']

    session.write_transaction do |tx|
      tx.run(
        "MERGE (u:User {id: $user_id})
        CREATE (r:Recipe {
            id: $id,
            title: $title,
            description: $description,
            image_url: $image_url,
            instructions: $instructions,
            is_public: $is_public,
            cuisine: $cuisine,
            difficulty: $difficulty,
            tags: $tags,
            prep_time: $prep_time,
            cook_time: $cook_time,
            servings: $servings,
            created_at: $created_at,
            updated_at: $updated_at
      })
        CREATE (r)-[:CREATED_BY]->(u)
        WITH r
        UNWIND $ingredients_data AS ingredient
        CREATE (i:Ingredient {
          id: ingredient.id,
          name: ingredient.name,
          category: ingredient.category,
          amount: ingredient.amount,
          created_at: ingredient.created_at,
          updated_at: ingredient.updated_at
        })
        CREATE (r)-[:HAS_INGREDIENT]->(i)
        ",
        id: row['id'],
        user_id: user_id,
        title: row['title'],
        description: row['description'],
        image_url: row['image_url'],
        instructions: row['instructions'].to_json,
        is_public: row['is_public'],
        cuisine: row['cuisine'].to_json,
        difficulty: row['difficulty'],
        tags: row['tags'].to_json,
        prep_time: row['prep_time'],
        cook_time: row['cook_time'],
        servings: row['servings'],
        created_at: row['created_at'],
        updated_at: row['updated_at'],
        ingredients_data: ingredients_for_recipe.map do |ing|
          {
            id: SecureRandom.uuid,
            name: ing['name'],
            category: ing['category'],
            amount: ing['amount'],
            created_at: ing['created_at'],
            updated_at: ing['updated_at']
          }
        end
      )
    end
  end
end

puts " #{recipes.size} recipes migrated from MySQL to Neo4j"

# ===========================
# MIGRATE LLM_USAGES
# ===========================

puts "Migrating llm_usages..."

llm_usages = mysql_client.query("SELECT * FROM llm_usages")

neo4j_driver.session do |session|
  llm_usages.each do |row|
    user_id = users.to_a.sample['id']
    recipe_id = recipes.to_a.sample['id']

    session.write_transaction do |tx|
      tx.run(
        "MERGE (u:User {id: $user_id})
        MERGE (r:Recipe {id: $recipe_id})
        CREATE (l:LlmUsage {
            id: $id,
            provider: $provider,
            model: $model,
            prompt: $prompt,
            prompt_tokens: $prompt_tokens,
            completion_tokens: $completion_tokens,
            created_at: $created_at,
            updated_at: $updated_at
      })
        CREATE (u)-[:HAS_LLM_USAGE]->(l)
        CREATE (r)-[:HAS_LLM_USAGE]->(l)",
        id: row['id'],
        user_id: user_id,
        recipe_id: recipe_id,
        provider: row['provider'],
        model: row['model'],
        prompt: row['prompt'],
        prompt_tokens: row['prompt_tokens'],
        completion_tokens: row['completion_tokens'],
        created_at: row['created_at'],
        updated_at: row['updated_at'],
      )
    end
  end
end

puts " #{recipes.size} recipes migrated from MySQL to Neo4j"


