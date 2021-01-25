# Add next player relation
class AddNextPlayer < ActiveRecord::Migration[6.1]
  def change
    add_reference :players, :next_player, index: true
  end
end
