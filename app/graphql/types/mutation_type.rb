module Types
  class MutationType < Types::BaseObject
    field :create_game, mutation: Mutations::Games::CreateGame, description: 'Creates a new noplio game'
  end
end
