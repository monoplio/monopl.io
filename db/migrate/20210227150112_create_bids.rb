# Create bid
class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.references :player
      t.integer :amount
      t.timestamps
    end
    add_reference :auctions, :bid, index: true
  end
end
