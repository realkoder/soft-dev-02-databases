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

# Seed multiple LlmUsage records
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
# NEXT_SEEDING
# =================
