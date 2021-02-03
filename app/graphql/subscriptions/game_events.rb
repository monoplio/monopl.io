module Subscriptions
  class GameEvents < Subscriptions::BaseSubscription
    argument :game_id, ID, required: false
    description 'A subscription that streams game events and game state'
    type Types::MessageType
    subscription_scope :current_game_id
  end
end
