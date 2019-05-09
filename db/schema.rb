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

ActiveRecord::Schema.define(version: 2019_05_09_203723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "black_cards", force: :cascade do |t|
    t.string "text"
    t.integer "pick"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.bigint "users_id"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_players_on_users_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.boolean "game_started"
    t.integer "visibility"
    t.bigint "owner_id"
    t.bigint "czar_id"
    t.bigint "players_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["czar_id"], name: "index_rooms_on_czar_id"
    t.index ["owner_id"], name: "index_rooms_on_owner_id"
    t.index ["players_id"], name: "index_rooms_on_players_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "white_cards", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
