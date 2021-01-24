module Types
  # The CardType is the GraphQL type for the card type model
  class CardType < Types::BaseObject
    description 'A type that represents a single card entity.'
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :action, Types::ActionType, null: false
  end
end
