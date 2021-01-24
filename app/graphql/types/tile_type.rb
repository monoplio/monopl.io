module Types
  # The GameType is the GraphQL type for the Game model
  class TileType < Types::BaseObject
    description 'A type that represents a single Game entity.'
    field :id, ID, null: false
    field :x, Integer, null: false
    field :y, Integer, null: false
    field :board_tile_type, String, null: false
    field :board_tile, Types::BoardTileType, null: false
  end
end
