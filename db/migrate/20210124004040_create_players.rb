# Create players model
class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :username
      t.integer :x
      t.integer :y
      t.integer :balance
      t.references :game

      t.timestamps
    end
  end
end
