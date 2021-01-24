class ActionTile < ApplicationRecord
  belong_to :action
  has_one :tile, as: :board_tile, dependent: :destroy
end
