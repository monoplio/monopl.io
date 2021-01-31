module Mutations
  module Turns
    # Mutation that adds house/hotel to a property
    class BuyHouse < BaseMutation
      argument :property_id, ID, required: true

      type Types::PropertyType
      def resolve(property_id:)
        property = Property.find(property_id)
        player = Player.find(property.player_id)
        game = Game.find(player.game_id)

        if game.house_available.positive? && (player.balance > property.house_price) && (property.stage <= 5)
          property.update!(stage: property.stage + 1)
          game.update!(house_available: game.house_available - 1)
        end
        property
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Game or player or property does not exist')
      end
    end
  end
end
