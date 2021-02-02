module Types
  # The MessageType is used for modelling the return of graphql subcriptions
  class MessageType < Types::BaseObject
    description 'A type used for modelling the return of graphql subcriptions.'
    field :message, String, null: false
    field :data, Types::GameType, null: false
  end
end
