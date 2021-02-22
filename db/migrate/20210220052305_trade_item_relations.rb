# Add trade foreign key to trade_items
class TradeItemRelations < ActiveRecord::Migration[6.1]
  def change
    add_reference :trade_items, :trade, foreign_key: true
  end
end
