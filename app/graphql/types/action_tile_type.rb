module Types
  # The GameType is the GraphQL type for the Game model
  class ActionTileType < Types::BaseObject
    description 'A type that represents a single Game entity.'
    field :id, ID, null: false
    field :name, String, null: false
    field :action, Types::ActionType, null: false
  end
end
