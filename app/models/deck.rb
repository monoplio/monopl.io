class Deck < ApplicationRecord
  has_one :tile, as: :board_tile, dependent: :destroy
end
