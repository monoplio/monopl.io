module Types
  # BoardTileType is for polymorphic tile associations
  class BoardTileType < Types::BaseUnion
    description 'Various kinds of tiles'
    possible_types Types::PropertyType, Types::ActionTileType

    def self.resolve_type(object, _context)
      if object.is_a?(Property)
        Types::PropertyType
      else
        Types::ActionTileType
      end
    end
  end
end
