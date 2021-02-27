class Auction < ApplicationRecord
  has_one :game, dependent: :destroy
  belongs_to :property, class_name: 'Property', optional: false
  belongs_to :bid, class_name: 'Bid', optional: true
end
