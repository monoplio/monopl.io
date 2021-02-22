# Rename field to match naming conventions
class RenameTradeField < ActiveRecord::Migration[6.1]
  def change
    rename_column :trades, :creator_money, :owner_money
  end
end
