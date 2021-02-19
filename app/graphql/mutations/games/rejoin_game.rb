module Mutations
  module Games
    # Mutation that allows user to rejoin an existing Game entity
    class RejoinGame < BaseMutation
      argument :username, String, required: true
      argument :game_id, ID, required: true

      type Types::PlayerType
      def resolve(username:, game_id:)
        game = ::Game.find(game_id)

        if game.state.eql? 'pending'
          GraphQL::ExecutionError.new('ERROR: Unable to join game')
        else
          player = ::Player.find_by!(username: username, game_id: game.id)
          GraphqlEvent.new(message: 'RejoinGame', data: game)
          player
        end
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Game does not exist')
      end
    end
  end
end
