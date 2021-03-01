module Types
  # The AuctionType is the GraphQL type for the Auction model
  class AuctionType < Types::BaseObject
    description 'A type that represents a single auction entity.'
    field :id, ID, null: false
    field :game, Types::GameType, null: false
    field :property, Types::PropertyType, null: false
    field :bids, [Types::BidType], null: true
  end
end
