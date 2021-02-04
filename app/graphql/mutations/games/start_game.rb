module Mutations
  module Games
    # Mutation that allows user to join an existing Game entity
    class StartGame < BaseMutation
      argument :game_id, ID, required: true

      type Types::GameType
      def resolve(game_id:)
        game = Game.find(game_id)
        if game.players.length <= 1
          GraphQL::ExecutionError.new('ERROR: Add more players before starting game')
        elsif !game.state.eql? 'pending'
          GraphQL::ExecutionError.new('ERROR: Game cannot be started')
        else
          game.update!(state: 'start')
          (0..(game.players.length - 2)).each do |i|
            game.players[i].update!(next_player_id: game.players[i + 1].id)
          end
          game.players[game.players.length - 1].update!(next_player_id: game.players[0].id)
          GraphqlEvent.new(message: 'StartGame', data: game)
          game
        end
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Game does not exist')
      end
    end
  end
end
