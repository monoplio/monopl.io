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
          player.update!(last_roll1: rand(1..6), last_roll2: rand(1..6))
          if player.last_roll1 == player.last_roll2
            if player.in_jail
              player.update!(in_jail: false)
              GraphqlEvent.new(message: 'RollDice', data: player.game)
              player # Return player without changing player x if player was in jail
            elsif player.roll_count == 2
              player.update!(x: 10, in_jail: true)
            elsif player.roll_count.nil?
              player.update!(roll_count: 1)
            else
              player.update!(roll_count: player.roll_count + 1)
            end
          else
            player.update!(roll_count: 0, can_roll: false)
          end
          x = player.x + player.last_roll1 + player.last_roll2
          player.update!(balance: player.balance + 200) unless x < 40
          player.update!(x: x % game.width) unless player.in_jail
          GraphqlEvent.new(message: 'RollDice', data: player.game)
          player
        end
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('ERROR: Player or game does not exist')
      end
    end
  end
end
