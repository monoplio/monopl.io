# Adds current player relation to game
class AddCurrentPlayer < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :current_player, index: true
  end
end
