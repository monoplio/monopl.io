class Bid < ApplicationRecord
    has_one :auction
    belongs_to :player, class_name: 'Player', optional: false
end
