module Types
  class MutationType < Types::BaseObject
    field :create_game, mutation: Mutations::Games::CreateGame, description: 'Creates a new noplio game'
    field :join_game, mutation: Mutations::Games::JoinGame, description: 'Joins existing noplio game'
  end
end
