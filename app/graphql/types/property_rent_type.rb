module Types
  # The PropertyRentType is the GraphQL type for the PropertyRent model
  class PropertyRentType < Types::BaseObject
    description 'A type that represents a single Game entity.'
    field :id, ID, null: false
    field :stage, Integer, null: false
    field :rent, String, null: false
  end
end
