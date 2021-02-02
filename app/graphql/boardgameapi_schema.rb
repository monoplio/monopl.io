# GraphQl Schema
class BoardgameapiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  use GraphQL::Subscriptions::ActionCableSubscriptions
  subscription(Types::SubscriptionType)
end
