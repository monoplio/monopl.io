# Migration that creates tiles table
class CreateTiles < ActiveRecord::Migration[6.1]
  def change
    create_table :tiles do |t|
      t.integer :x
      t.integer :y
      t.references :board_tile, polymorphic: true
      t.references :game
      t.timestamps
    end
  end
end
