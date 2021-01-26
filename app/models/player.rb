class Player < ApplicationRecord
  belongs_to :game
  belongs_to :next_player, class_name: 'Player', optional: true
end
