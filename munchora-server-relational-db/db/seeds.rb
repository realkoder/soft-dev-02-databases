# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# db/seeds.rb

require "securerandom"

# =================
# USERS
# =================

users = [
  {
    first_name: "Alice",
    last_name: "Example",
    email: "alice@example.com",
    provider: "email",
    uid: "alice-uid",
    password: "password123",
    image_src: "https://via.placeholder.com/150",
    bio: "Loves cooking and experimenting with new recipes.",
    last_signed_in_at: nil
  },
  {
    first_name: "Bob",
    last_name: "Example",
    email: "bob@example.com",
    provider: "email",
    uid: "bob-uid",
    password: "password123",
    image_src: "https://via.placeholder.com/150",
    bio: "Big fan of Italian cuisine.",
    last_signed_in_at: nil
  },
  {
    first_name: "Charlie",
    last_name: "Example",
    email: "charlie@example.com",
    provider: "email",
    uid: "charlie-uid",
    password: "password123",
    image_src: "https://via.placeholder.com/150",
    bio: "Enjoys baking bread on weekends.",
    last_signed_in_at: nil
  }
]
users.each do |attrs|
  user = User.find_or_initialize_by(email: attrs[:email])
  user.update!(attrs)
end

users = User.all

puts "Seeded #{users.size} users."

# =================
# RECIPES
# =================

sample_recipes = [
  {
    title: "Spaghetti Carbonara",
    description: "Classic Italian pasta dish with eggs, cheese, pancetta, and pepper.",
    image_url: "https://example.com/spaghetti.jpg",
    instructions: [
      "Boil water in a large pot and cook spaghetti until al dente.",
      "Fry pancetta until crisp.",
      "Whisk eggs and cheese together.",
      "Combine pasta with pancetta and remove from heat.",
      "Stir in egg mixture quickly to create a creamy sauce.",
      "Season with pepper and serve."
    ],
    is_public: true,
    cuisine: ["Italian"],
    difficulty: "medium",
    tags: ["pasta", "quick", "classic"],
    prep_time: 10,
    cook_time: 20,
    servings: 2
  },
  {
    title: "Vegan Buddha Bowl",
    description: "Healthy and colorful bowl with quinoa, roasted veggies, and tahini dressing.",
    image_url: "https://example.com/buddha_bowl.jpg",
    instructions: [
      "Cook quinoa according to package instructions.",
      "Roast a mix of vegetables in olive oil, salt, and pepper.",
      "Assemble quinoa, veggies, and greens in a bowl.",
      "Drizzle with tahini dressing and sprinkle seeds on top.",
      "Serve warm or cold."
    ],
    is_public: true,
    cuisine: ["Vegan", "Fusion"],
    difficulty: "easy",
    tags: ["vegan", "healthy", "bowl"],
    prep_time: 15,
    cook_time: 25,
    servings: 1
  },
  {
    title: "Chocolate Lava Cake",
    description: "Rich chocolate cake with molten center, perfect for dessert lovers.",
    image_url: "https://example.com/lava_cake.jpg",
    instructions: [
      "Preheat oven to 425°F (220°C).",
      "Butter and flour ramekins.",
      "Melt chocolate and butter together.",
      "Whisk eggs, sugar, and a pinch of salt until fluffy.",
      "Fold chocolate mixture into eggs.",
      "Pour batter into ramekins and bake 12-14 minutes.",
      "Serve immediately with ice cream."
    ],
    is_public: false,
    cuisine: ["Dessert"],
    difficulty: "hard",
    tags: ["chocolate", "dessert", "bake"],
    prep_time: 20,
    cook_time: 14,
    servings: 2
  }
]

sample_recipes.each do |recipe_attrs|
  Recipe.create!(
    id: SecureRandom.uuid,
    user_id: users.sample.id,
    title: recipe_attrs[:title],
    description: recipe_attrs[:description],
    image_url: recipe_attrs[:image_url],
    instructions: recipe_attrs[:instructions],
    is_public: recipe_attrs[:is_public],
    cuisine: recipe_attrs[:cuisine],
    difficulty: recipe_attrs[:difficulty],
    tags: recipe_attrs[:tags],
    prep_time: recipe_attrs[:prep_time],
    cook_time: recipe_attrs[:cook_time],
    servings: recipe_attrs[:servings]
  )
end

puts "Seeded #{sample_recipes.size} recipes."

# =================
# INGREDIENTS
# =================

ingredients_list = [
  { name: "Spaghetti", category: "pasta & rice 🍝", amount: 200 },
  { name: "Pancetta", category: "meat 🍗", amount: 100 },
  { name: "Eggs", category: "dairy 🥚", amount: 2 },
  { name: "Parmesan Cheese", category: "dairy 🥚", amount: 50 },
  { name: "Quinoa", category: "grains 🌾", amount: 100 },
  { name: "Mixed Vegetables", category: "vegetables 🥦", amount: 150 },
  { name: "Tahini", category: "sauces & oils 🫙", amount: 30 },
  { name: "Chocolate", category: "snacks 🍫", amount: 100 },
  { name: "Butter", category: "dairy 🥚", amount: 50 },
  { name: "Sugar", category: "spices & herbs 🌶️", amount: 50 }
]

Recipe.all.each do |recipe|
  case recipe.title
  when "Spaghetti Carbonara"
    ingredients_for_recipe = ingredients_list.select { |i| ["Spaghetti", "Pancetta", "Eggs", "Parmesan Cheese"].include?(i[:name]) }
  when "Vegan Buddha Bowl"
    ingredients_for_recipe = ingredients_list.select { |i| ["Quinoa", "Mixed Vegetables", "Tahini"].include?(i[:name]) }
  when "Chocolate Lava Cake"
    ingredients_for_recipe = ingredients_list.select { |i| ["Chocolate", "Butter", "Eggs", "Sugar"].include?(i[:name]) }
  else
    ingredients_for_recipe = []
  end

  ingredients_for_recipe.each do |ing|
    Ingredient.create!(
      recipe_id: recipe.id,
      name: ing[:name],
      category: ing[:category],
      amount: ing[:amount]
    )
  end
end

puts "Seeded ingredients for recipes."

# =================
# LLM_USAGE
# =================

require "securerandom"

# Make sure there are some recipes and users
users = User.all
recipes = Recipe.all

if users.empty? || recipes.empty?
  puts "No users or recipes found! Seed those first."
  exit
end

llm_usages_sample = [
  {
    provider: "OpenAI",
    model: "gpt-4",
    prompt: "Generate a quick Italian pasta recipes with eggs and cheese.",
    prompt_tokens: 15,
    completion_tokens: 120
  },
  {
    provider: "Anthropic",
    model: "claude-1",
    prompt: "Create a vegan Buddha bowl with quinoa and roasted vegetables.",
    prompt_tokens: 20,
    completion_tokens: 90
  },
  {
    provider: "OpenAI",
    model: "gpt-3.5-turbo",
    prompt: "Write a rich chocolate lava cake recipes for dessert.",
    prompt_tokens: 18,
    completion_tokens: 100
  }
]

20.times do
  usage_attrs = llm_usages_sample.sample
  LlmUsage.create!(
    id: SecureRandom.uuid,
    user_id: users.sample.id,
    recipe_id: recipes.sample.id,
    provider: usage_attrs[:provider],
    model: usage_attrs[:model],
    prompt: usage_attrs[:prompt],
    prompt_tokens: usage_attrs[:prompt_tokens],
    completion_tokens: usage_attrs[:completion_tokens]
  )
end

puts "Seeded 20 LlmUsage records."

# =================
# FEEDBACK
# =================

# db/seeds.rb

Feedback.create!([
                   { message: "Love the recipes! Keep up the great work.", name: "Alice Johnson", email: "alice@example.com", category: "general" },
                   { message: "Found a bug when trying to upload an image.", name: "Bob Smith", email: "bob@example.com", category: "bug" },
                   { message: "Could you add more vegan recipes?", name: "Carol Lee", email: "carol@example.com", category: "features" },
                   { message: "The website is loading slowly on mobile.", name: "David Kim", email: "david@example.com", category: "general" },
                   { message: "I appreciate the detailed cooking instructions!", name: "Eve Martinez", email: "eve@example.com", category: "general" },
                   { message: "Would love a dark mode option.", name: "Frank Green", email: "frank@example.com", category: "features" },
                   { message: "The login process is confusing.", name: "Grace Hopper", email: "grace@example.com", category: "interface" },
                   { message: "Great app, but the search feature could be faster.", name: "Hannah Brown", email: "hannah@example.com", category: "general" },
                   { message: "Images sometimes fail to upload on Safari.", name: "Ian Clarke", email: "ian@example.com", category: "bug" },
                   { message: "Please add a category filter for recipes.", name: "Jane Doe", email: "jane@example.com", category: "features" },
                   { message: "Really enjoy the grocery list feature.", name: "Kevin Lee", email: "kevin@example.com", category: "general" },
                   { message: "The AI recipe generator is amazing!", name: "Laura Kim", email: "laura@example.com", category: "general" },
                   { message: "I had trouble resetting my password.", name: "Mike Taylor", email: "mike@example.com", category: "bug" },
                   { message: "Consider adding multi-language support.", name: "Nina Patel", email: "nina@example.com", category: "features" },
                   { message: "Some recipes are missing nutrition info.", name: "Oliver White", email: "oliver@example.com", category: "bug" },
                   { message: "The mobile layout looks great!", name: "Paula Adams", email: "paula@example.com", category: "general" },
                   { message: "Notifications for saved recipes would be helpful.", name: "Quinn Martin", email: "quinn@example.com", category: "features" },
                   { message: "Sometimes the app crashes when uploading images.", name: "Rachel Scott", email: "rachel@example.com", category: "bug" },
                   { message: "Love the step-by-step recipe instructions.", name: "Sam Wilson", email: "sam@example.com", category: "general" },
                   { message: "Would be great to share recipes with friends.", name: "Tina Young", email: "tina@example.com", category: "features" }
                 ])

puts "Seeded 20 Feedback records."

# =================
# GROCERY_LIST
# =================

grocery_lists = GroceryList.create([
                                     { name: "Home", owner_id: users.sample.id },
                                     { name: "Etc", owner_id: users.sample.id },
                                     { name: "stuff", owner_id: users.sample.id },
                                     { name: "Dinner party", owner_id: users.sample.id },
                                     { name: "Work", owner_id: users.sample.id },
                                     { name: "Shared", owner_id: users.sample.id },
                                     { name: "Random", owner_id: users.sample.id },
                                     { name: "Sports", owner_id: users.sample.id },
                                     { name: "Baking", owner_id: users.sample.id },
                                     { name: "Holiday", owner_id: users.sample.id }
                                   ])

puts "Seeded 10 GroceryList records."

# =================
# GROCERY_LIST_ITEMS
# =================

def create_items_for_random_lists(items)
  grocery_list = GroceryList.all.sample

  items.each do |attrs|
    GroceryListItem.create!(
      attrs.merge(
        grocery_list_id: grocery_list.id,
        added_by_id: grocery_list.owner_id
      )
    )
  end
end

create_items_for_random_lists([{ name: "Guldkorn", category: "breakfast 🥣", is_completed: true },
                               { name: "Coco Pops", category: "breakfast 🥣", is_completed: false },
                               { name: "Beans", category: "canned goods 🥫", is_completed: true },
                               { name: "Bread", category: "bakery 🥖", is_completed: true },
                               { name: "Hand soap", category: "cleaning 🧼", is_completed: true, }])

create_items_for_random_lists([
                                { name: "Salt", category: "condiments 🧂", is_completed: true, },
                                { name: "Pepper", category: "condiments 🧂", is_completed: true },
                                { name: "Chicken", category: "meat 🍗", is_completed: true },
                                { name: "Beef", category: "meat 🍗", is_completed: true },
                                { name: "Leverpostej", category: "meat 🍗", is_completed: true },
                                { name: "Hellefisk", category: "fish 🐟", is_completed: true },
                                { name: "Rødspætte", category: "fish 🐟", is_completed: true },
                                { name: "Fiskefilet", category: "fish 🐟", is_completed: true }
                              ])

create_items_for_random_lists([
                                { name: "Sild", category: "fish 🐟", is_completed: true },
                                { name: "Cod", category: "fish 🐟", is_completed: true },
                                { name: "Squid", category: "fish 🐟", is_completed: true },
                                { name: "Cheese", category: "dairy 🥚", is_completed: true },
                                { name: "Skyr", category: "dairy 🥚", is_completed: true },
                                { name: "Egg", category: "dairy 🥚", is_completed: true },
                                { name: "Milk", category: "dairy 🥚", is_completed: true },
                              ])

puts "Seeded 10 GroceryListItem records."

# =================
# GROCERY_LIST_SHARES
# =================
pairs = grocery_lists.product(users) # all possible [grocery_list, user] pairs
unique_pairs = pairs.sample(20) # pick 20 unique pairs at random

GroceryListShare.create!(unique_pairs.map do |list, user|
  { grocery_list_id: list.id, user_id: user.id }
end)

puts "Seeded 20 GroceryListShare records."

# =================
# NEXT SEEDING
# =================

