# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131126211930) do

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "lat",        precision: 10, scale: 6
    t.decimal  "lon",        precision: 10, scale: 6
  end

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date_of_birth"
    t.string   "middle_name"
    t.integer  "place_id"
    t.text     "bio"
    t.string   "height"
    t.string   "photo_url"
    t.string   "photo_caption"
  end

  create_table "places", force: true do |t|
    t.string   "name"
    t.decimal  "lat",        precision: 10, scale: 6
    t.decimal  "lon",        precision: 10, scale: 6
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  create_table "player_types", force: true do |t|
    t.string "name"
  end

  create_table "players", force: true do |t|
    t.integer  "appearances"
    t.integer  "substitute_appearances"
    t.integer  "goals"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_international"
  end

  create_table "role_types", force: true do |t|
    t.string "name"
  end

  create_table "roles", force: true do |t|
    t.date     "from_date"
    t.date     "to_date"
    t.integer  "person_id"
    t.integer  "role_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
