# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

game = Game.create!(
  width: 11,
  height: 11,
  house_available: 32,
  hotel_available: 12
)

go_tile = ActionTile.create!(
  name: 'GO'
)

property = Property.create!(
  name: 'Test Property',
  price: 100
)

Tile.create!(
  x: 0,
  y: 0,
  game: game,
  board_tile: go_tile
)

Tile.create!(
  x: 1,
  y: 0,
  game: game,
  board_tile: property
)
