class Tile < ApplicationRecord
  belongs_to :board_tile, polymorphic: true
  belongs_to :game
end
