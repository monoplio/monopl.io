class Game < ApplicationRecord
  has_many :tiles, dependent: :delete_all
  has_many :players, dependent: :delete_all
  belongs_to :owner, class_name: 'Player', optional: true
  belongs_to :current_player, class_name: 'Player', optional: true
end
