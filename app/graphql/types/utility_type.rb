module Types
  # The UtilityType is the GraphQL type for the Utility model
  class UtilityType < Types::BaseObject
    description 'A type that represents a single Game entity.'
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
  end
end
