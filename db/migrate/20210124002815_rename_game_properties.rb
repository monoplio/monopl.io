# Migration to rename columns in game
class RenameGameProperties < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :house_max, :house_available
    rename_column :games, :hotel_max, :hotel_available
  end
end
