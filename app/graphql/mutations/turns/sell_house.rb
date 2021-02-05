module Mutations
  module Turns
    # Mutation that removes house/hotel from a property
    class SellHouse < BaseMutation
      argument :player_id, ID, required: true
      argument :property_id, ID, required: true

      type Types::PropertyType
      def resolve(player_id:, property_id:)
        property = Property.find(property_id)
        player = Player.find(player_id)
        game = Game.find(player.game_id)
        property_set = PropertySet.find(property.property_set_id)
        stage = property.stage

        if property_set.properties.where(stage: stage + 1).size.positive?
          GraphQL::ExecutionError.new('ERROR: Cannot sell house/hotel; violates even build rule')
        elsif property.stage.positive?
          property.stage == 5 ? game.update!(hotel_available: game.hotel_available + 1) : game.update!(house_available: game.house_available + 1)
          property.update!(stage: property.stage - 1)
          player.update!(balance: player.balance + property.house_price / 2)
          GraphqlEvent.new(message: 'SellHouse', data: game)
          property
        else
          GraphQL::ExecutionError.new('ERROR: The property does not have any houses or hotels')
        end
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Game or player or property does not exist')
      end
    end
  end
end
