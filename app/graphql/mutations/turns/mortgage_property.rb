module Mutations
  module Turns
    # Mutation that mortgages property
    class MortgageProperty < BaseMutation
      argument :property_id, ID, required: true

      type Types::PropertyType
      def resolve(property_id:)
        property = Property.find(property_id)

        if property.player_id.nil?
          GraphQL::ExecutionError.new('ERROR: Property is not owned')
        elsif property.state != 'owned'
          GraphQL::ExecutionError.new('ERROR: Player cannot perform this action; the property may be mortgaged already')
        elsif property.stage.positive?
          GraphQL::ExecutionError.new('ERROR: There are still houses/hotels on the property')
        else
          property.update!(state: 'mortgaged')
          Player.find(property.player_id).update!(balance: player.balance + property.mortgage)
          property
        end
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Player or property does not exist')
      end
    end
  end
end