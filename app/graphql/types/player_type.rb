module Types
  # The PlayerType is the GraphQL type for the Player type model
  class PlayerType < Types::BaseObject
    description 'A type that represents a single Player entity.'
    field :id, ID, null: false
    field :username, String, null: false
    field :x, Integer, null: false
    field :y, Integer, null: false
    field :balance, Integer, null: false
    field :can_roll, Boolean, null: false
    field :is_playing, Boolean, null: false
    field :last_roll1, Integer, null: true
    field :last_roll2, Integer, null: true
    field :in_jail, Boolean, null: false
    field :color, String, null: false
    field :next_player, Types::PlayerType, null: true
    field :game, Types::GameType, null: true
    field :tile, Types::TileType, null: true
  end
end
