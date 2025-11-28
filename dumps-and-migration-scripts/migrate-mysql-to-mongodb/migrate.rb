require 'dotenv/load'
require 'mysql2'
require 'mongo'

# =====================
# ESTABLISH CONNECTION
# =====================

mysql_client = Mysql2::Client.new(
  host: ENV['MYSQL_HOST'],
  username: ENV['MYSQL_USER'],
  password: ENV['MYSQL_PASSWORD'],
  database: ENV['MYSQL_DATABASE'],
  port: ENV['MYSQL_PORT']
)

mongodb_client = Mongo::Client.new(ENV['MONGODB_CONNECTION_STRING'])

def random_user(db, exclude_id: nil)
  pipeline = []
  if exclude_id
    pipeline << { "$match" => { "_id" => { "$ne" => exclude_id } } }
  end
  pipeline << { "$sample" => { "size" => 1 } }

  db[:users].aggregate(pipeline).first
end

def random_recipe(db)
  db[:recipes].aggregate([{ "$sample" => { size: 1 } }]).first
end

# =====================
# MIGRATE USERS
# =====================

# Reset users
mongodb_client[:users].drop

users = mysql_client.query("SELECT * FROM users")
users.each do |row|
  mongodb_client[:users]
    .insert_one({
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
                })
end

puts "#{users.size} users migrated from MySQL to MongoDB"

# =====================
# FEEDBACK
# =====================

# Reset users
mongodb_client[:feedbacks].drop

feedbacks = mysql_client.query("SELECT * FROM feedbacks")
feedbacks.each do |row|
  mongodb_client[:feedbacks]
    .insert_one({
                  name: row['name'],
                  email: row['email'],
                  message: row['message'],
                  category: row['category'],
                  created_at: row['created_at'],
                  updated_at: row['updated_at']
                })
end

puts "#{feedbacks.size} feedbacks migrated from MySQL to MongoDB"

# =====================
# RECIPES
# =====================

mongodb_client[:recipes].drop

recipes = mysql_client.query("SELECT * FROM recipes")
recipes.each do |row|
  ingredient_rows = mysql_client.query("SELECT * FROM ingredients WHERE recipe_id = '#{row['id']}'")

  ingredients = []
  ingredient_rows.each do |ingredient_row|
    ingredients << {
      _id: BSON::ObjectId.new,
      name: ingredient_row['name'],
      category: ingredient_row['category'],
      amount: ingredient_row['amount'],
    }
  end

  instructions = JSON.parse(row['instructions']) rescue [row['instructions']]
  tags = JSON.parse(row['tags']) rescue [row['tags']]
  cuisine = JSON.parse(row['cuisine']) rescue [row['cuisine']]

  mongodb_client[:recipes]
    .insert_one({
                  user_id: random_user(mongodb_client)[:_id],
                  title: row['title'],
                  description: row['description'],
                  image_url: row['image_url'],
                  instructions: instructions,
                  is_public: row['is_public'].to_i == 1,
                  ingredients: ingredients,
                  cuisine: cuisine,
                  difficulty: row['difficulty'],
                  tags: tags,
                  prep_time: row['prep_time'],
                  cook_time: row['cook_time'],
                  servings: row['servings'],
                  created_at: row['created_at'],
                  updated_at: row['updated_at'],
                })
end

puts "#{recipes.size} recipes migrated from MySQL to MongoDB"

# =====================
# LLM_USAGES
# =====================

mongodb_client[:llm_usages].drop

llm_usages = mysql_client.query("SELECT * FROM llm_usages")
llm_usages.each do |row|
  mongodb_client[:llm_usages]
    .insert_one({
                  user_id: random_user(mongodb_client)[:_id],
                  recipe_id: random_user(mongodb_client)[:_id],
                  id: "0533930f-dcaa-4508-b14e-26485d401673",
                  provider: row['provider'],
                  model: row['model'],
                  prompt: row['prompt'],
                  prompt_tokens: row['prompt_tokens'],
                  completion_tokens: row['completion_tokens'],
                  created_at: row['created_at'],
                  updated_at: row['updated_at'],
                })
end

puts "#{llm_usages.size} llm_usages migrated from MySQL to MongoDB"

# =====================
# RECIPE_LIKES
# =====================

mongodb_client[:recipe_likes].drop

recipe_likes = mysql_client.query("SELECT * FROM recipe_likes")
recipe_likes.each do |row|
  mongodb_client[:recipe_likes]
    .insert_one({
                  user_id: random_user(mongodb_client)[:_id],
                  recipe_id: random_recipe(mongodb_client)[:_id],
                  created_at: row['created_at'],
                  updated_at: row['updated_at'],
                })
end

puts "#{recipe_likes.size} recipe_likes migrated from MySQL to MongoDB"

# =====================
# RECIPE_COMMENTS
# =====================

mongodb_client[:recipe_comments].drop

recipe_comments = mysql_client.query("SELECT * FROM recipe_comments")
recipe_comments.each do |row|
  mongodb_client[:recipe_comments]
    .insert_one({
                  user_id: random_user(mongodb_client)[:_id],
                  recipe_id: random_recipe(mongodb_client)[:_id],
                  comment: row['comment'],
                  created_at: row['created_at'],
                  updated_at: row['updated_at'],
                })
end

puts "#{recipe_comments.size} recipe_comments migrated from MySQL to MongoDB"

# =====================
# GROCERY_LISTS
# =====================

mongodb_client[:grocery_lists].drop

grocery_lists = mysql_client.query("SELECT * FROM grocery_lists")
grocery_lists.each do |row|
  grocery_list_id = BSON::ObjectId.new
  owner_id = random_user(mongodb_client)[:_id]

  grocery_list_item_rows = mysql_client.query("SELECT * FROM grocery_list_items WHERE grocery_list_id = '#{row['id']}'")
  grocery_list_items = []

  grocery_list_item_rows.each do |item_row|
    grocery_list_items << {
      _id: BSON::ObjectId.new,
      name: item_row['name'],
      category: item_row['category'],
      is_completed: item_row['is_completed'],
      added_by_id: owner_id,
      created_at: item_row['created_at'],
      updated_at: item_row['updated_at']
    }
  end

  mongodb_client[:grocery_lists]
    .insert_one({
                  _id: grocery_list_id,
                  owner_id: owner_id,
                  name: row['name'],
                  items: grocery_list_items,
                  created_at: row['created_at'],
                  updated_at: row['updated_at'],
                })

  grocery_list_shares = mysql_client.query("SELECT * from grocery_list_shares WHERE grocery_list_id = '#{row['id']}'")

  grocery_list_shares.each do |share_row|
    user = random_user(mongodb_client, exclude_id: owner_id)

    next unless user

    mongodb_client[:users].update_one(
      { _id: user[:_id] },
      {
        "$push" => { shared_grocery_list_ids: grocery_list_id }
      })

    mongodb_client[:grocery_lists].update_one(
      { _id: grocery_list_id },
      { "$push" => { shared_user_ids: user[:_id] } })
  end
end

puts "#{grocery_lists.size} grocery_lists migrated from MySQL to MongoDB"