module Mutations
  module Turns
    # Mutation that ends a player's turn
    class RollDice < BaseMutation
      argument :player_id, ID, required: true

      type Types::PlayerType
      def resolve(player_id:)
        player = Player.find(player_id)
        game = Game.find(player.game_id)

        if player.balance.negative?
          GraphQL::ExecutionError.new('ERROR: Cannot roll with negative balance')
        elsif game.current_player_id != player.id
          GraphQL::ExecutionError.new('ERROR: Cannot roll on other player\'s turn')
        elsif !(game.state.eql? 'start')
          GraphQL::ExecutionError.new('ERROR: Can only roll during an in progress game')
        elsif !player.can_roll
          GraphQL::ExecutionError.new('ERROR: Player cannot roll')
        else
          roll1 = rand(1..6)
          roll2 = rand(1..6)
          player.update!(last_roll: roll1 + roll2)
          if roll1 == roll2
            if player.in_jail
              player.update!(in_jail: false)
              GraphqlEvent.new(message: 'RollDice', data: player.game)
              player # Return player without changing player x if player was in jail
            elsif player.roll_count == 2
              player.update!(x: 10, in_jail: true)
            else
              player.update!(roll_count: player.roll_count + 1)
            end
          else
            player.update!(roll_count: 0, can_roll: false)
          end
          player.update!(x: ((player.x + roll1 + roll2) % game.width)) unless player.in_jail
          GraphqlEvent.new(message: 'RollDice', data: player.game)
          player
        end
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Player or game does not exist')
      end
    end
  end
end
