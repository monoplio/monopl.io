module Types
  # The PropertySetType is the GraphQL type for the PropertySet model
  class PropertySetType < Types::BaseObject
    description 'A type that represents a single Game entity.'
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
  end
end
