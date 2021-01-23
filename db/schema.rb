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

ActiveRecord::Schema.define(version: 20_210_123_195_039) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'action_tiles', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'games', force: :cascade do |t|
    t.integer 'width'
    t.integer 'height'
    t.integer 'house_max'
    t.integer 'hotel_max'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'properties', force: :cascade do |t|
    t.string 'name'
    t.integer 'price'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'tiles', force: :cascade do |t|
    t.integer 'x'
    t.integer 'y'
    t.string 'board_tile_type'
    t.bigint 'board_tile_id'
    t.bigint 'game_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[board_tile_type board_tile_id], name: 'index_tiles_on_board_tile'
    t.index ['game_id'], name: 'index_tiles_on_game_id'
  end
end
