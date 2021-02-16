module Queries
  # A Query that returns the information of a given game based on the given id
  class Tile < Queries::BaseQuery
    description 'Get Tile by id'
    argument :id, ID, required: true
    type Types::TileType, null: false

    def resolve(id:)
      ::Tile.find(id)
    rescue ActiveRecord::RecordNotFound
      GraphQL::ExecutionError.new('ERROR: Tile of given ID is nil')
    end
  end
end
