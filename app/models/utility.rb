class Utility < ApplicationRecord
  belongs_to :player, optional: true
  belongs_to :action
  has_one :tile, as: :board_tile, dependent: :destroy
end
