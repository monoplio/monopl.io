# Model for trades table
class Trade < ApplicationRecord
  has_one :game, class_name: 'Game', foreign_key: 'current_trade_id', required: false, inverse_of: :trade, dependent: :destroy
  belongs_to :owner, class_name: 'Player', optional: true
  belongs_to :customer, class_name: 'Player', optional: true

  def trade_member(player)
    owner.id == player.id || customer.id == player.id
  end
end
