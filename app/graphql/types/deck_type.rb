module Types
  # The DeckType is the GraphQL type for the deck type model
  class DeckType < Types::BaseObject
    description 'A type that represents a single Deck entity.'
    field :id, ID, null: false
    field :name, String, null: false
    field :cards, [Types::CardType], null: false
  end
end
