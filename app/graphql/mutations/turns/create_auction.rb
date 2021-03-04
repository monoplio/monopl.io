module Mutations
  module Turns
    # Mutation that creates an auction
    class CreateAuction < BaseMutation
      argument :property_id, ID, required: true

      type Types::AuctionType
      def resolve(property_id:)
        property = Property.find(property_id)
        game = property.tile.game
        players = game.players

        auction = ::Auction.create!(
          property_id: property.id,
          game_id: game.id
        )

        players.each do |p|
          Bid.create!(
            player_id: p.id,
            auction_id: auction.id,
            amount: 0
          )
        end

        game.update!(state: 'auction')
        GraphqlEvent.new(message: 'CreateAuction', data: game)
        auction
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Player or property does not exist')
      end
    end
  end
end
