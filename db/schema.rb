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

ActiveRecord::Schema.define(version: 2021_02_17_030934) do

  create_table "entries", force: :cascade do |t|
    t.date "date"
    t.string "end_of_day_mood"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "entry_provisions", force: :cascade do |t|
    t.integer "entry_id"
    t.integer "provision_id"
    t.integer "amount"
    t.string "unit"
    t.boolean "homemade"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entry_id"], name: "index_entry_provisions_on_entry_id"
    t.index ["provision_id"], name: "index_entry_provisions_on_provision_id"
  end

  create_table "provisions", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "approx_cals_per_serving"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "uid"
    t.string "provider"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "entries", "users"
  add_foreign_key "entry_provisions", "entries"
  add_foreign_key "entry_provisions", "provisions"
end
