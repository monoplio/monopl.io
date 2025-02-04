module Types
  # The GameType is the GraphQL type for the Game model
  class GameType < Types::BaseObject
    description 'A type that represents a single Game entity.'
    field :id, ID, null: false
    field :width, Integer, null: false
    field :height, Integer, null: false
    field :house_available, Integer, null: false
    field :hotel_available, Integer, null: false
    field :state, String, null: false
    field :tiles, [Types::TileType], null: false
    field :players, [Types::PlayerType], null: false
    field :auctions, [Types::AuctionType], null: true
    field :owner, Types::PlayerType, null: false
    field :current_player, Types::PlayerType, null: true
    field :current_trade, Types::TradeType, null: true

    def tiles
      Loaders::AssociationLoader.for(Game, :tiles).load(object)
    end

    def players
      Loaders::AssociationLoader.for(Game, :players).load(object)
    end

    def auctions
      Loaders::AssociationLoader.for(Game, :auctions).load(object)
    end
  end
end
