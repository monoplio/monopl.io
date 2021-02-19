class ActionTile < ApplicationRecord
  belongs_to :action, optional: true
  has_one :tile, as: :board_tile, dependent: :destroy
end
