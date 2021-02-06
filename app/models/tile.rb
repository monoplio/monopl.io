# Model for Tiles table
class Tile < ApplicationRecord
  belongs_to :board_tile, polymorphic: true
  belongs_to :game

  def current_players
    Player.where(x: x, game_id: game_id)
  end
end
