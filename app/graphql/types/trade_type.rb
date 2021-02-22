module Types
  # The TradeType is the GraphQL type for the Trade model
  class TradeType < Types::BaseObject
    description 'A type that represents a single Trade entity.'
    field :id, ID, null: false
    field :owner, Types::PlayerType, null: true
    field :customer, Types::PlayerType, null: true
  end
end
