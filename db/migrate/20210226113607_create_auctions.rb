# Create auctions
class CreateAuctions < ActiveRecord::Migration[6.1]
  def change
    create_table :auctions do |t|
      t.references :property
      t.timestamps
    end
    add_reference :games, :auction, index: true
  end
end
