module Types
  # The PlayerType is the GraphQL type for the Player type model
  class PlayerType < Types::BaseObject
    description 'A type that represents a single Player entity.'
    field :id, ID, null: false
    field :username, String, null: false
    field :x, Integer, null: false
    field :y, Integer, null: false
    field :balance, Integer, null: false
    field :is_playing, Boolean, null: false
    field :last_roll, Integer, null: true
    field :next_player, Types::PlayerType, null: true
  end
end
