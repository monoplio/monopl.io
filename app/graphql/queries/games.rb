module Queries
  # A Query that returns all games
  class Games < Queries::BaseQuery
    description 'Get Games'
    type [Types::GameType], null: false

    def resolve
      ::Game.all
    end
  end
end
