module Mutations
  module Turns
    # Mutation that adds house/hotel to a property
    class BuyProperty < BaseMutation
      argument :player_id, ID, required: true
      argument :property_id, ID, required: true

      type Types::PropertyType
      def resolve(player_id:, property_id:)
        player = Player.find(player_id)
        property = Property.find(property_id)

        if player.balance > property.price && property.player_id.nil?
          property.update!(player_id: player_id)
          player.update!(balance: player.balance - property.price)
        end
        property
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Player or property does not exist')
      end
    end
  end
end
