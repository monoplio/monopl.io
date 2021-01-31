module Types
  class MutationType < Types::BaseObject
    # Game Mutations
    field :create_game, mutation: Mutations::Games::CreateGame, description: 'Creates a new noplio game'
    field :join_game, mutation: Mutations::Games::JoinGame, description: 'Joins existing noplio game'
    field :start_game, mutation: Mutations::Games::StartGame, description: 'Starts noplio game'

    # Turn Mutations
    field :buy_house, mutation: Mutations::Turns::BuyHouse, description: 'Purchases house on property'
    field :buy_property, mutation: Mutations::Turns::BuyProperty, description: 'Purchases property'
    field :ff, mutation: Mutations::Turns::Ff, description: 'Player forfeits game'
    field :sell_house, mutation: Mutations::Turns::SellHouse, description: 'Sells house on property'
  end
end
