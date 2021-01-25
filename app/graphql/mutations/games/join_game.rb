module Mutations
  module Games
    # Mutation that allows user to join an existing Game entity
    class JoinGame < BaseMutation
      argument :username, String, required: true
      argument :game_id, ID, required: true

      type Types::PlayerType
      def resolve(username:, game_id:)
        game = Game.find(game_id)

        ::Player.create!(
          username: username,
          x: 0,
          y: 0,
          balance: 1500,
          game_id: game.id
        )
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Game does not exist')
      end
    end
  end
end