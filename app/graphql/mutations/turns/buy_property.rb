module Mutations
  module Turns
    # Mutation that purchases a property
    class BuyProperty < BaseMutation
      argument :player_id, ID, required: true
      argument :property_id, ID, required: true

      type Types::PropertyType
      def resolve(player_id:, property_id:)
        player = Player.find(player_id)
        property = Property.find(property_id)

        if !property.player_id.nil?
          GraphQL::ExecutionError.new('ERROR: Property is already owned')
        elsif player.balance < property.price
          GraphQL::ExecutionError.new('ERROR: Player does not have enough money')
        else
          property.update!(player_id: player_id, state: 'owned')
          player.update!(balance: player.balance - property.price)
          GraphqlEvent.new(message: 'BuyProperty', data: player.game)
          property
        end
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Player or property does not exist')
      end
    end
  end
end
