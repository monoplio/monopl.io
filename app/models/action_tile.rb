class ActionTile < ApplicationRecord
  has_one :tile, as: :board_tile, dependent: :destroy
end
