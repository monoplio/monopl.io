# Removes reference to player in player
class RemovePlayerReference < ActiveRecord::Migration[6.1]
  def change
    remove_reference :players, :player, foreign_key: true
  end
end
