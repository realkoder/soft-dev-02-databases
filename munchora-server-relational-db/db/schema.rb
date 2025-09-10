# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_09_10_141725) do
  create_table "ingredients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "amount"
    t.string "recipe_id", limit: 36, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "llm_usages", id: { type: :string, limit: 36 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_id", limit: 36, null: false
    t.string "recipe_id", limit: 36, null: false
    t.string "provider"
    t.string "model"
    t.text "prompt"
    t.integer "prompt_tokens"
    t.integer "completion_tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_llm_usages_on_recipe_id"
    t.index ["user_id", "created_at"], name: "index_llm_usages_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_llm_usages_on_user_id"
  end

  create_table "recipes", id: { type: :string, limit: 36 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_id", limit: 36, null: false
    t.string "title"
    t.text "description"
    t.string "image_url"
    t.json "instructions"
    t.boolean "is_public", default: false
    t.json "cuisine"
    t.string "difficulty"
    t.json "tags"
    t.integer "prep_time", default: 10
    t.integer "cook_time", default: 10
    t.integer "servings", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "is_public"], name: "index_recipes_on_user_id_and_is_public"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", id: { type: :string, limit: 36 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "provider"
    t.string "uid"
    t.string "password_digest"
    t.string "image_src"
    t.string "bio"
    t.datetime "last_signed_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["last_name"], name: "index_users_on_last_name"
    t.index ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true
  end

  add_foreign_key "ingredients", "recipes"
  add_foreign_key "llm_usages", "recipes"
  add_foreign_key "llm_usages", "users"
  add_foreign_key "recipes", "users"
end
