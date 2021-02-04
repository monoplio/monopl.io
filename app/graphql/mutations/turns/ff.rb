module Mutations
  module Turns
    # Mutation that sets hands player forfeiting
    class Ff < BaseMutation
      argument :player_id, ID, required: true

      type Types::PlayerType
      def resolve(player_id:)
        # Sets playing boolean to false
        player = Player.find(player_id)
        player.update!(is_playing: false)

        # Skips turn if not playing
        unless player.next_player.nil?
          next_player = player.next_player_id
          Player.find_by(next_player_id: player_id).update!(next_player_id: next_player)
        end
        GraphqlEvent.new(message: 'Ff', data: player.game)
        player
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Player does not exist')
      end
    end
  end
end
