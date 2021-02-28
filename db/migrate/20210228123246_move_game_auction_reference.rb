# Move FK to auction
class MoveGameAuctionReference < ActiveRecord::Migration[6.1]
  def change
    remove_reference :games, :auction, index: true
    remove_reference :auctions, :bid, index: true
    add_reference :auctions, :game, index: true
    add_reference :bids, :auction, index: true
  end
end
