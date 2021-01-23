# Migration that creates games table
class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :width
      t.integer :height
      t.integer :house_max
      t.integer :hotel_max

      t.timestamps
    end
  end
end
