module Types
  # Represents GraphQL Subscriptions
  class SubscriptionType < Types::BaseObject
    field :test, Types::GameType, null: false, description: 'A game'
  end
end
