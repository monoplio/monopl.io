module Mutations
  module Turns
    # Mutation that adds house/hotel to a property
    class BuyHouse < BaseMutation
      argument :player_id, ID, required: true
      argument :property_id, ID, required: true

      type Types::PropertyType
      def resolve(player_id:, property_id:)
        property = ::Property.find(property_id)
        player = ::Player.find(player_id)
        game = ::Game.find(player.game_id)
        property_set = PropertySet.find(property.property_set_id)
        stage = property.stage

        if game.current_player_id != player.id
          GraphQL::ExecutionError.new('ERROR: Can only purchase houses/hotels on player\'s turn')
        elsif player.id != property.player_id
          GraphQL::ExecutionError.new('ERROR: Player does not own this property')
        elsif property_set.properties.where(player_id: player.id).size != property_set.properties.length
          GraphQL::ExecutionError.new('ERROR: Player does not own monopoly containing this property')
        elsif property_set.properties.where(stage: stage - 1).size.positive?
          GraphQL::ExecutionError.new('ERROR: Cannot build house/hotel; violates even build rule')
        elsif player.balance < property.house_price
          GraphQL::ExecutionError.new('ERROR: Player does not have enough money')
        elsif property.stage < 4 && game.house_available.zero?
          GraphQL::ExecutionError.new('ERROR: No more houses available in game')
        elsif property.stage == 4 && game.hotel_available.zero?
          GraphQL::ExecutionError.new('ERROR: No more hotels available in game')
        elsif property.stage >= 5
          GraphQL::ExecutionError.new('ERROR: No more houses/hotels may be purchased on this property')
        else
          property.update!(stage: property.stage + 1)
          player.update!(balance: player.balance - property.house_price)
          property.stage == 4 ? game.update!(hotel_available: game.hotel_available - 1) : game.update!(house_available: game.house_available - 1)
          GraphqlEvent.new(message: 'BuyHouse', data: game)
          property
        end
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Game or player or property does not exist')
      end
    end
  end
end
