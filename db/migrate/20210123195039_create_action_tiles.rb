# Migration to create action_tiles table
class CreateActionTiles < ActiveRecord::Migration[6.1]
  def change
    create_table :action_tiles do |t|
      t.string :name

      t.timestamps
    end
  end
end
