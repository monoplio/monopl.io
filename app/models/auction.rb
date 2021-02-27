class Auction < ApplicationRecord
  has_one :game
  belongs_to :property, class_name: 'Property', optional: false
  belongs_to :bid, class_name: 'Bid', optional: true
end
