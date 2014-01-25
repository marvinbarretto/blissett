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

ActiveRecord::Schema.define(version: 20140125025358) do

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.string   "badge_url"
    t.integer  "place_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "colour_hex"
    t.text     "bio"
  end

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.boolean  "is_league"
    t.boolean  "is_national"
    t.boolean  "is_cup"
    t.boolean  "is_european"
    t.boolean  "is_friendly"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "lat",        precision: 10, scale: 6
    t.decimal  "lon",        precision: 10, scale: 6
  end

  create_table "levels", force: true do |t|
    t.integer  "tier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.date     "date"
    t.integer  "competition_id"
    t.integer  "opposition_id"
    t.integer  "season_id"
    t.integer  "attendance"
    t.boolean  "is_home"
    t.integer  "home_goals"
    t.integer  "away_goals"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "watford_legends_url"
  end

  create_table "places", force: true do |t|
    t.string   "name"
    t.decimal  "lat",        precision: 10, scale: 6
    t.decimal  "lon",        precision: 10, scale: 6
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  create_table "players", force: true do |t|
    t.integer  "appearances"
    t.integer  "substitute_appearances"
    t.integer  "goals"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_international"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", force: true do |t|
    t.integer  "year_begin"
    t.integer  "year_end"
    t.integer  "competition_id"
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stints", force: true do |t|
    t.integer  "person_id"
    t.integer  "role_id"
    t.integer  "join_date"
    t.integer  "leave_date"
    t.integer  "from"
    t.integer  "bought_fee"
    t.integer  "sold_to"
    t.integer  "sold_fee"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_permanent"
    t.boolean  "is_one_of_our_own"
  end

end
