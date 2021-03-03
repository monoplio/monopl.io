module Mutations
  module Turns
    # Mutation that creates an Auction
    class IncreaseBid < BaseMutation
      argument :player_id, ID, require: true
      argument :bid_amount, Integer, required: true

      type Types::AuctionType
      def resolve(player_id:, bid_amount:)
        player = Player.find(player_id)
        auction = Auction.find(auction_id)
        game = Game.find(player.game_id)
        players = game.players

        bid = Bid.where(player_id: player.id).first

        # Update bid amount to -1 for players who don't have enough money anymore
        if bid.amount >= bid_amount
          GraphQL::ExecutionError.new('ERROR: New bid amount is the same or less than current bid amount')
        else
          Bid.update!(amount: bid_amount)

          players.each do |p|
            Bid.where(player_id: p.id).first.update!(amount: -1) if p.balance < bid_amount
          end
        end

        # Check for winner
        remaining_bids = auction.bids.where.not(amount: -1)
        if remaining_bids.size == 1
          winning_bid = remaining_bids.first
          winning_player = winning_bid.player
          property = auction.property

          winning_player.update!(balance: winning_player.balance - winning_bid.amount)
          property.update!(player_id: winning_player.id, state: 'owned')
          auction.destroy!

          game.update!(state: 'start') if Auction.where(game_id: game.id).size.zero?
        end

        GraphqlEvent.new(message: 'IncreaseBid', data: player.game)
        auction
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Player or property does not exist')
      end
    end
  end
end
