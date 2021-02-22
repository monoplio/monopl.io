# Create trade items table
class CreateTradeItems < ActiveRecord::Migration[6.1]
  def change
    create_table :trade_items do |t|
      t.references :item, polymorphic: true
      t.timestamps
    end
  end
end
