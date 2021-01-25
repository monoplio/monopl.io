module Mutations
  module Games
    # Mutation that creates a Game entity with the provided information
    class CreateGame < BaseMutation
      argument :username, String, required: true

      type Types::GameType
      def resolve(username:)
        game = ::Game.create!(
          width: 11,
          height: 11,
          house_available: 32,
          hotel_available: 12,
          state: 'pending'
        )

        player = ::Player.create!(
          username: username,
          x: 0,
          y: 0,
          balance: 1500,
          game_id: game.id
        )

        game.update!(owner_id: player.id)
        game
      end
    end
  end
end
