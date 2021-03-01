class Bid < ApplicationRecord
  belongs_to :player, class_name: 'Player', optional: false
  belongs_to :auction, class_name: 'Auction', optional: false
end
