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

ActiveRecord::Schema[7.0].define(version: 2022_09_19_130853) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "book_name"
    t.datetime "Created_date", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author_name"
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "Bank_account_id"
    t.string "team_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department_id"
    t.integer "team_id"
    t.integer "bank_id"
    t.index ["bank_id"], name: "index_employees_on_bank_id"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["team_id"], name: "index_employees_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department_id"
    t.index ["department_id"], name: "index_teams_on_department_id"
  end

  add_foreign_key "books", "authors"
  add_foreign_key "employees", "banks"
  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "teams"
  add_foreign_key "teams", "departments"
end
