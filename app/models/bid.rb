class Bid < ApplicationRecord
  has_one :auction, dependent: :destroy
  belongs_to :player, class_name: 'Player', optional: false
end
