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

ActiveRecord::Schema[8.0].define(version: 2025_08_27_093250) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"
  enable_extension "pgcrypto"

  create_table "llm_usages", force: :cascade do |t|
    t.string "model"
    t.string "provider"
    t.uuid "user_id", null: false
    t.integer "prompt_tokens"
    t.integer "completion_tokens"
    t.integer "total_tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "created_at"], name: "index_llm_usages_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_llm_usages_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "image_url"
    t.string "description"
    t.string "ingredients", default: [], array: true
    t.boolean "is_public"
    t.string "difficulty"
    t.string "tags", default: [], array: true
    t.integer "prep_time", default: 0
    t.integer "cook_time", default: 0
    t.integer "servings", default: 1
    t.uuid "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "instructions", default: [], array: true
    t.string "cuisine"
    t.index ["ingredients"], name: "index_recipes_on_ingredients", using: :gin
    t.index ["tags"], name: "index_recipes_on_tags", using: :gin
    t.index ["user_id", "is_public"], name: "index_recipes_on_user_id_and_is_public"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "fullname"
    t.string "email"
    t.string "provider"
    t.string "uid"
    t.string "password_digest"
    t.string "image_src"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bio", limit: 2000
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true
  end

  add_foreign_key "llm_usages", "users"
  add_foreign_key "recipes", "users"
end
