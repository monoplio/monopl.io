# Add foreign keys for trades
class TradeRelations < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :current_trade, index: true
    add_reference :trades, :owner, index: true
    add_reference :trades, :customer, index: true
  end
end
