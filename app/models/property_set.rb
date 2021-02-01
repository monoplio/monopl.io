class PropertySet < ApplicationRecord
  has_many :properties, dependent: :delete_all
end
