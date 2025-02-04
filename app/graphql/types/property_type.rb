module Types
  # The GameType is the GraphQL type for the Game model
  class PropertyType < Types::BaseObject
    description 'A type that represents a single Game entity.'
    field :id, ID, null: false
    field :name, String, null: false
    field :price, Integer, null: false
    field :player, Types::PlayerType, null: true
    field :stage, Integer, null: false
    field :state, String, null: false
    field :mortgage, Integer, null: false
    field :house_price, Integer, null: true
    field :can_buy_house, Boolean, null: false
    field :can_sell_house, Boolean, null: false
    field :property_set, Types::PropertySetType, null: true
    field :property_rents, [Types::PropertyRentType], null: true
  end
end
