# Create trades table migration
class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.integer :creator_money
      t.integer :customer_money

      t.timestamps
    end
  end
end
