class Action < ApplicationRecord
  has_many :action_tiles, dependent: :destroy
end
