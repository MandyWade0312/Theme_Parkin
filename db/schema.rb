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

ActiveRecord::Schema.define(version: 2021_10_26_185705) do

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.text "history"
    t.integer "year_built"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "summary"
    t.text "body"
    t.integer "stars"
    t.integer "ride_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["ride_id"], name: "index_reviews_on_ride_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "rides", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "type_of_ride"
    t.float "latitude"
    t.float "longitude"
    t.integer "park_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_rides_on_park_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "reviews", "rides"
  add_foreign_key "reviews", "users"
  add_foreign_key "rides", "parks"
end
