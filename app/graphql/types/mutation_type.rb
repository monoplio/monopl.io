module Types
  class MutationType < Types::BaseObject
    # Game Mutations
    field :create_game, mutation: Mutations::Games::CreateGame, description: 'Creates a new noplio game'
    field :join_game, mutation: Mutations::Games::JoinGame, description: 'Joins existing noplio game'
    field :rejoin_game, mutation: Mutations::Games::RejoinGame, description: 'Rejoins existing noplio game'
    field :start_game, mutation: Mutations::Games::StartGame, description: 'Starts noplio game'

    # Turn Mutations
    field :buy_house, mutation: Mutations::Turns::BuyHouse, description: 'Purchases house on property'
    field :buy_property, mutation: Mutations::Turns::BuyProperty, description: 'Purchases property'
    field :create_auction, mutation: Mutations::Turns::CreateAuction, description: 'Creates an auction for the given property'
    field :end_bid, mutation: Mutations::Turns::EndBid, description: 'Player opts out of an auction'
    field :ff, mutation: Mutations::Turns::Ff, description: 'Player forfeits game'
    field :increase_bid, mutation: Mutations::Turns::IncreaseBid, description: 'Increase the bid amount for the given player'
    field :mortgage_property, mutation: Mutations::Turns::MortgageProperty, description: 'Mortgages a property'
    field :roll_dice, mutation: Mutations::Turns::RollDice, description: 'Rolls the dice'
    field :sell_house, mutation: Mutations::Turns::SellHouse, description: 'Sells house on property'
    field :unmortgage_property, mutation: Mutations::Turns::UnmortgageProperty, description: 'Unmortgages a property'
    field :end_turn, mutation: Mutations::Turns::EndTurn, description: 'Ends player turn'
  end
end
