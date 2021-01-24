module Types
  # The GameType is the GraphQL type for the Game model
  class PropertyType < Types::BaseObject
    description 'A type that represents a single Game entity.'
    field :id, ID, null: false
    field :name, Integer, null: false
    field :price, Integer, null: false
  end
end
