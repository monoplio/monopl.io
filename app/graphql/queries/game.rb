module Queries
  # A Query that returns the information of a given game based on the given id
  class Game < Queries::BaseQuery
    description 'Get Game by id'
    argument :id, ID, required: true
    type Types::GameType, null: false

    def resolve(id:)
      ::Game.find(id)
    rescue ActiveRecord::RecordNotFound
      GraphQL::ExecutionError.new('ERROR: Game of given ID is nil')
    end
  end
end
