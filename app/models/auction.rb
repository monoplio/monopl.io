class Auction < ApplicationRecord
  has_many :bids, dependent: :delete_all
  has_one :game, dependent: :destroy
  belongs_to :game, class_name: 'Game', optional: false
  belongs_to :property, class_name: 'Property', optional: false
end
