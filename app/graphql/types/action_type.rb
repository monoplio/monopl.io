module Types
  # The Actions is the GraphQL type for the Action type model
  class ActionType < Types::BaseObject
    description 'A type that represents a single Action entity.'
    field :id, ID, null: false
    field :name, String, null: false
  end
end
