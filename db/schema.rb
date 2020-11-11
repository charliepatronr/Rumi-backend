# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_11_011731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chores", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "points"
    t.bigint "house_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["house_id"], name: "index_chores_on_house_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "unique_key"
    t.string "img"
    t.string "rof_week"
    t.text "rules"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sprint_chores", force: :cascade do |t|
    t.bigint "sprint_id", null: false
    t.bigint "chore_id", null: false
    t.boolean "completion_status"
    t.text "review"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "accepted"
    t.boolean "rejected"
    t.index ["chore_id"], name: "index_sprint_chores_on_chore_id"
    t.index ["sprint_id"], name: "index_sprint_chores_on_sprint_id"
    t.index ["user_id"], name: "index_sprint_chores_on_user_id"
  end

  create_table "sprints", force: :cascade do |t|
    t.bigint "house_id", null: false
    t.date "begin_date"
    t.date "end_date"
    t.boolean "completion_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "active"
    t.boolean "approval"
    t.index ["house_id"], name: "index_sprints_on_house_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.boolean "admin"
    t.string "email"
    t.bigint "house_id", null: false
    t.integer "points"
    t.integer "historical_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "username"
    t.index ["house_id"], name: "index_users_on_house_id"
  end

  add_foreign_key "chores", "houses"
  add_foreign_key "sprint_chores", "chores"
  add_foreign_key "sprint_chores", "sprints"
  add_foreign_key "sprint_chores", "users"
  add_foreign_key "sprints", "houses"
  add_foreign_key "users", "houses"
end
