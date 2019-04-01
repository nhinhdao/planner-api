# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_01_201447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "contact"
    t.string "location"
    t.integer "rating"
    t.datetime "time"
    t.string "photos", default: [], array: true
    t.integer "user_id"
    t.integer "timetable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "user_name"
    t.string "user_image", default: "https://i.imgur.com/MhN5kCx.jpg"
    t.string "text"
    t.datetime "time_created"
    t.integer "rating"
    t.integer "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "image", default: "https://i.imgur.com/NbwnI6C.jpg"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
