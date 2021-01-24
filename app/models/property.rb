class Property < ApplicationRecord
  belong_to :player
  belong_to :property_set
  has_one :tile, as: :board_tile, dependent: :destroy
end
