module Mutations
  module Turns
    # Mutation that creates an auction
    class EndBid < BaseMutation
      argument :player_id, ID, required: true

      type Types::GameType
      def resolve(player_id:)
        player = Player.find(player_id)
        game = player.game
        bid = Bid.where(player_id: player_id)
        auction = bid.auction
        remaining_bids = auction.bids.where.not(amount: -1)

        bid.update!(amount: -1)

        # Check for winner
        if remaining_bids.size == 1
          winning_bid = remaining_bids.first
          winning_player = winning_bid.player
          property = auction.property

          winning_player.update!(balance: winning_player.balance - winning_bid.amount)
          property.update!(player_id: winning_player.id, state: 'owned')
          auction.destroy!

          game.update!(state: 'start') if Auction.where(game_id: game.id).size.zero?
        end

        GraphqlEvent.new(message: 'EndBid', data: player.game)
        game
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Player does not exist')
      end
    end
  end
end