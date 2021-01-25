module Mutations
  module Games
    # Mutation that allows user to join an existing Game entity
    class StartGame < BaseMutation
      argument :game_id, ID, required: true

      type Types::GameType
      def resolve(game_id:)
        game = Game.find(game_id)
        game.update!(state: 'start')
        game
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Game does not exist')
      end
    end
  end
end
