# Model for Players table
class Player < ApplicationRecord
  has_one :bid
  belongs_to :game
  belongs_to :next_player, class_name: 'Player', optional: true

  def tile
    Tile.find_by(x: x, game_id: game_id)
  end
end
