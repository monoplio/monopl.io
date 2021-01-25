# Migration for adding price to utility
class UtilityHasPrice < ActiveRecord::Migration[6.1]
  def change
    add_column :utilities, :price, :integer
  end
end
