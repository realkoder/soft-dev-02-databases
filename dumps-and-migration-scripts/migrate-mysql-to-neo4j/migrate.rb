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

puts 'resetting neo4j db'

neo4j_driver.session do |session|
  # Drop all constraints
  session.write_transaction do |tx|
    constraints = tx.run("SHOW CONSTRAINTS YIELD name").map { |row| row["name"] }
    constraints.each do |name|
      tx.run("DROP CONSTRAINT #{name}")
    end
  end

  # Drop all indexes
  session.write_transaction do |tx|
    indexes = tx.run("SHOW INDEXES YIELD name").map { |row| row["name"] }
    indexes.each do |name|
      tx.run("DROP INDEX #{name}")
    end
  end

  # Delete all nodes
  session.write_transaction do |tx|
    tx.run("MATCH (n) DETACH DELETE n")
  end
end

puts 'neo4j db is reset to a clean slate'

# ===========================
# MIGRATE USERS
# ===========================

puts "migrating users..."

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

puts "migrating feedbacks..."

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

puts "migrating recipes..."

recipes = mysql_client.query("SELECT * FROM recipes")

neo4j_driver.session do |session|
  recipes.each do |row|
    # INGREDIENTS FOR RECIPES
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
        instructions: row['instructions'],
        is_public: row['is_public'],
        cuisine: row['cuisine'],
        difficulty: row['difficulty'],
        tags: row['tags'],
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

puts "#{recipes.size} recipes migrated from MySQL to Neo4j"

# ===========================
# MIGRATE LLM_USAGES
# ===========================

puts "migrating llm_usages..."

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

puts "#{llm_usages.size} llm_usages migrated from MySQL to Neo4j"

# ===========================
# MIGRATE RECIPE_LIKES
# ===========================

puts "migrating recipe_likes..."

recipe_likes = mysql_client.query("SELECT * FROM recipe_likes")

neo4j_driver.session do |session|
  recipe_likes.each do |row|
    session.write_transaction do |tx|
      tx.run(
        "MERGE (u:User {id: $user_id})
        MERGE (r:Recipe {id: $recipe_id})
        CREATE (rl:RecipeLike {
            id: $id,
            created_at: $created_at,
            updated_at: $updated_at
      })
        CREATE (u)-[:CREATED]->(rl)
        CREATE (rl)-[:LIKED]->(r)",
        id: SecureRandom.uuid,
        user_id: row['user_id'],
        recipe_id: row['recipe_id'],
        created_at: row['created_at'],
        updated_at: row['updated_at'],
      )
    end
  end
end

puts "#{recipe_likes.size} recipes_likes migrated from MySQL to Neo4j"

# ===========================
# MIGRATE RECIPE_COMMENTS
# ===========================

puts "migrating recipe_comments..."

recipe_comments = mysql_client.query("SELECT * FROM recipe_comments")

neo4j_driver.session do |session|
  recipe_comments.each do |row|
    session.write_transaction do |tx|
      tx.run(
        "MERGE (u:User {id: $user_id})
        MERGE (r:Recipe {id: $recipe_id})
        CREATE (rl:RecipeComment {
            id: $id,
            comment: $comment,
            created_at: $created_at,
            updated_at: $updated_at
      })
        CREATE (u)-[:CREATED]->(rl)
        CREATE (rl)-[:COMMENTED]->(r)",
        id: SecureRandom.uuid,
        user_id: row['user_id'],
        comment: row['comment'],
        recipe_id: row['recipe_id'],
        created_at: row['created_at'],
        updated_at: row['updated_at'],
      )
    end
  end
end

puts "#{recipe_comments.size} recipes_comments migrated from MySQL to Neo4j"

# ===========================
# MIGRATE GROCERY_LISTS
# ===========================

puts "migrating grocery_lists..."

grocery_lists = mysql_client.query("SELECT * FROM grocery_lists")

neo4j_driver.session do |session|
  grocery_lists.each do |row|
    # ITEMS FOR GROCERY_LISTS
    items_for_lists = mysql_client.query("SELECT * FROM grocery_list_items WHERE grocery_list_id = '#{row['id']}'")
    user_id = users.to_a.sample['id']
    session.write_transaction do |tx|
      tx.run(
        "MERGE (u:User {id: $user_id})
        CREATE (g:GroceryList {
            id: $id,
            name: $name,
            created_at: $created_at,
            updated_at: $updated_at
      })
        CREATE (g)-[:CREATED_BY]->(u)
        WITH g
        UNWIND $items_data AS item
        CREATE (gi:GroceryListItem {
          id: item.id,
          name: item.name,
          category: item.category,
          is_completed: item.is_completed,
          created_at: item.created_at,
          updated_at: item.updated_at
        })
        CREATE (gi)-[:ADDED_BY]->(u)
        CREATE (g)-[:HAS_ITEM]->(gi)
        ",
        id: row['id'],
        user_id: user_id,
        name: row['name'],
        created_at: row['created_at'],
        updated_at: row['updated_at'],
        items_data: items_for_lists.map do |item|
          {
            id: SecureRandom.uuid,
            name: item['name'],
            category: item['category'],
            is_completed: item['is_completed'],
            created_at: item['created_at'],
            updated_at: item['updated_at']
          }
        end
      )
    end
  end
end

puts "#{grocery_lists.size} grocery_lists migrated from MySQL to Neo4j"
