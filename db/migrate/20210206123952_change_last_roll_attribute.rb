# Splits last roll attributes in two
class ChangeLastRollAttribute < ActiveRecord::Migration[6.1]
  def change
    remove_column :players, :last_roll, :integer
    change_table :players, bulk: true do |t|
      t.integer :last_roll1
      t.integer :last_roll2
    end
  end
end
