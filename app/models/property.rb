class Property < ApplicationRecord
  belongs_to :player
  belongs_to :property_set
  has_one :tile, as: :board_tile, dependent: :destroy
end
