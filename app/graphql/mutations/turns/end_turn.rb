module Mutations
    module Turns
      # Mutation that ends a player's turn
      class EndTurn < BaseMutation
        argument :player_id, ID, required: true
  
        type Types::GameType
        def resolve(player_id:)
          player = Player.find(player_id)
          game = Game.find(player.game_id)

          if player.balance<0
            GraphQL::ExecutionError.new('ERROR: Cannot end turn with negative balance')
          elsif game.current_player_id != player.id
            GraphQL::ExecutionError.new('ERROR: Cannot end turn on other player\'s turn')
          elsif !(game.state.eql? 'start')
            GraphQL::ExecutionError.new('ERROR: Can only end turn for in progress game')
          else
            game.update!(current_player_id: player.next_player_id)
            GraphqlEvent.new(message: 'EndTurn', data: player.game)
            game
          end
        rescue ActiveRecord::RecordNotFound
          GraphQL::ExecutionError.new('ERROR: Player or game does not exist')
        end
      end
    end
  end
  