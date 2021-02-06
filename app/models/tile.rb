class Tile < ApplicationRecord
  belongs_to :board_tile, polymorphic: true
  belongs_to :game

  def current_players
    Player.where(x: self.x, game_id: self.game_id)
  end
end
