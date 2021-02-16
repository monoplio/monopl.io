module Mutations
  module Turns
    # Mutation that unmortgages a property
    class UnmortgageProperty < BaseMutation
      argument :property_id, ID, required: true

      type Types::PropertyType
      def resolve(property_id:)
        property = Property.find(property_id)
        player = Player.find(property.player_id)

        if property.player_id.nil?
          GraphQL::ExecutionError.new('ERROR: Property is not owned')
        elsif player.balance < property.mortgage * 1.1
          GraphQL::ExecutionError.new('ERROR: Player does not have enough money')
        elsif property.state != 'mortgaged'
          GraphQL::ExecutionError.new('ERROR: Property is not mortgaged')
        else
          property.update!(state: 'owned')
          player.update!(balance: player.balance - property.mortgage * 1.1)
          GraphqlEvent.new(message: 'UnmortgageProperty', data: player.game)
          property
        end
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Player or property does not exist')
      end
    end
  end
end
