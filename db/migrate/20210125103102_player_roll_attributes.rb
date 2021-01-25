# Add player roll attributes
class PlayerRollAttributes < ActiveRecord::Migration[6.1]
  def change
    change_table :players, bulk: true do |t|
      t.boolean :can_roll
      t.integer :roll_count
    end
  end
end
