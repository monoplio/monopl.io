class ActionTile < ApplicationRecord
  belongs_to :action
  has_one :tile, as: :board_tile, dependent: :destroy
end
