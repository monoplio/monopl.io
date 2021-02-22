module Mutations
  module Turns
    # Mutation that starts a trade
    class StartTrade < BaseMutation
      argument :owner_id, ID, required: true
      argument :customer_id, ID, required: true

      type Types::TradeType
      def resolve(owner_id:, customer_id:)
        owner = ::Player.find!(owner_id).id
        trade = ::Trade.create!(
          owner_money: 0,
          customer_money: 0,
          owner_id: owner,
          customer_id: ::Player.find_by!(id: customer_id, game_id: owner.game.id).id
        )
        owner.game.update!(current_trade_id: trade.id)
        GraphqlEvent.new(message: 'StartTrade', data: owner.game)
        trade
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Game or player or property does not exist')
      end
    end
  end
end
