class Game < ApplicationRecord
  has_many :tiles, dependent: :delete_all
end
