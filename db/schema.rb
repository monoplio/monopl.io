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

ActiveRecord::Schema.define(version: 2021_01_25_181125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_tiles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "action_id"
    t.index ["action_id"], name: "index_action_tiles_on_action_id"
  end

  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "action_id"
    t.index ["action_id"], name: "index_cards_on_action_id"
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "width"
    t.integer "height"
    t.integer "house_available"
    t.integer "hotel_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "owner_id"
    t.string "state"
    t.index ["owner_id"], name: "index_games_on_owner_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.integer "x"
    t.integer "y"
    t.integer "balance"
    t.bigint "game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "can_roll"
    t.integer "roll_count"
    t.index ["game_id"], name: "index_players_on_game_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "player_id"
    t.bigint "property_set_id"
    t.index ["player_id"], name: "index_properties_on_player_id"
    t.index ["property_set_id"], name: "index_properties_on_property_set_id"
  end

  create_table "property_rents", force: :cascade do |t|
    t.integer "stage"
    t.integer "rent"
    t.bigint "property_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_property_rents_on_property_id"
  end

  create_table "property_sets", force: :cascade do |t|
    t.string "color"
    t.integer "bonus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tiles", force: :cascade do |t|
    t.integer "x"
    t.integer "y"
    t.string "board_tile_type"
    t.bigint "board_tile_id"
    t.bigint "game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_tile_type", "board_tile_id"], name: "index_tiles_on_board_tile"
    t.index ["game_id"], name: "index_tiles_on_game_id"
  end

  create_table "utilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "action_id"
    t.index ["action_id"], name: "index_utilities_on_action_id"
  end

  add_foreign_key "action_tiles", "actions"
  add_foreign_key "cards", "actions"
  add_foreign_key "properties", "players"
  add_foreign_key "properties", "property_sets"
  add_foreign_key "utilities", "actions"
end
