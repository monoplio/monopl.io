module Types
  # BoardTileType is for polymorphic tile associations
  class BoardTileType < Types::BaseUnion
    description 'Various kinds of tiles'
    possible_types Types::PropertyType, Types::ActionTileType, Types::UtilityType, Types::DeckType

    def self.resolve_type(object, _context)
      case object
      when Property
        Types::PropertyType
      when ActionTile
        Types::ActionTileType
      when Utility
        Types::UtilityType
      when Deck
        Types::DeckType
      end
    end
  end
end
