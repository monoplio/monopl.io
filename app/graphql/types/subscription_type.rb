module Types
  # Represents GraphQL Subscriptions
  class SubscriptionType < Types::BaseObject
    field :game_events, Types::MessageType, null: false, description: 'A subscription that streams game events and game state'
  end
end
