module Types
  # Represents GraphQL Subscriptions
  class SubscriptionType < Types::BaseObject
    field :game_events, subscription: Subscriptions::GameEvents
  end
end
