module Mutations
  module Turns
    # Mutation that ends a trade
    class EndTrade < BaseMutation
      argument :player_id, ID, required: true

      type Types::GameType
      def resolve(player_id:)
        player = ::Player.find!(player_id).id
        trade = player.game.current_trade

        GraphQL::ExecutionError.new('ERROR: No Active trade') unless trade
        GraphQL::ExecutionError.new('ERROR: Player is not a member of this trade') unless trade.trade_member? player

        player.game.current_trade.destroy!
        GraphqlEvent.new(message: 'EndTrade', data: player.game)
        player.game
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Game or player or property does not exist')
      end
    end
  end
end
