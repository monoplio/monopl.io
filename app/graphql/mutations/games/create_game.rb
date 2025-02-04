module Mutations
  module Games
    # Mutation that creates a Game entity with the provided information
    class CreateGame < BaseMutation
      argument :username, String, required: true

      type Types::GameType
      def resolve(username:)
        game = GenerateClassicMap.new.call

        player = ::Player.create!(
          username: username,
          x: 0,
          y: 0,
          balance: 1500,
          can_roll: false,
          is_playing: true,
          in_jail: false,
          color: "rgb(#{rand(0..255)},#{rand(0..255)},#{rand(0..255)})",
          game_id: game.id
        )

        game.update!(owner_id: player.id)
        game
      end
    end
  end
end
