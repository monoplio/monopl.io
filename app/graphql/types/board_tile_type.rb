module Types
  # BoardTileType is for polymorphic tile associations
  class BoardTileType < Types::BaseUnion
    description 'Various kinds of tiles'
    possible_types Types::PropertyType, Types::ActionTileType, Types::UtilityType, Types::DeckType


    def self.resolve_type(object, _context)
      if object.is_a?(Property)
        Types::PropertyType
      elsif object.is_a?(ActionTile)
        Types::ActionTileType
      elsif object.is_a?(Utility)
        Types::UtilityType
      elsif object.is_a?(Deck)
        Types::DeckType
      end
    end
  end
end
