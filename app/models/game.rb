class Game < ApplicationRecord
  has_many :tiles, dependent: :delete_all
  belongs_to :owner, class_name: 'Player', foreign_key: 'owner_id', required: true
end
