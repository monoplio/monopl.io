module Types
    # The BidType is the GraphQL type for the Bid model
    class BidType < Types::BaseObject
      description 'A type that represents a single Bid entity.'
      field :id, ID, null: false
      field :amount, Integer, null: false
      field :player, Types::PlayerType, null: false
      field :auction, Types::AuctionType, null: false
    end
  end
  