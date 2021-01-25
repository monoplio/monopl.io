class GenerateClassicMap
  def call
    game = Game.create!(
      width: 11,
      height: 11,
      house_available: 32,
      hotel_available: 12,
      state: 'pending'
    )

    action = Action.create!(
      name: 'TBD'
    )

    go_tile = ActionTile.create!(
      name: 'GO',
      action_id: action.id
    )

    Tile.create!(
      x: 0,
      y: 0,
      game: game,
      board_tile: go_tile
    )

    brown_set = PropertySet.create!(
      color: 'brown',
      bonus: 2
    )

    property = Property.create!(
      name: 'Brown 1',
      price: 60,
      property_set_id: brown_set.id
    )

    Tile.create!(
      x: 1,
      y: 0,
      game: game,
      board_tile: property
    )

    community_chest = Deck.create!(
      name: 'Community Chest'
    )

    Tile.create!(
      x: 2,
      y: 0,
      game: game,
      board_tile: community_chest
    )

    property = Property.create!(
      name: 'Brown 2',
      price: 80,
      property_set_id: brown_set.id
    )

    Tile.create!(
      x: 3,
      y: 0,
      game: game,
      board_tile: property
    )

    income_tax = ActionTile.create!(
      name: 'Income Tax',
      action_id: action.id
    )

    Tile.create!(
      x: 4,
      y: 0,
      game: game,
      board_tile: income_tax
    )

    rail_roads = PropertySet.create!(
      color: 'black',
      bonus: 0
    )

    property = Property.create!(
      name: 'Rail Road 1',
      price: 200,
      property_set_id: rail_roads.id
    )

    Tile.create!(
      x: 5,
      y: 0,
      game: game,
      board_tile: property
    )

    light_blue = PropertySet.create!(
      color: 'light Blue',
      bonus: 2
    )

    property = Property.create!(
      name: 'Light Blue 1',
      price: 100,
      property_set_id: light_blue.id
    )

    Tile.create!(
      x: 6,
      y: 0,
      game: game,
      board_tile: property
    )

    chance = Deck.create!(
      name: 'Chance'
    )

    Tile.create!(
      x: 7,
      y: 0,
      game: game,
      board_tile: chance
    )

    property = Property.create!(
      name: 'Light Blue 2',
      price: 100,
      property_set_id: light_blue.id
    )

    Tile.create!(
      x: 8,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Light Blue 3',
      price: 120,
      property_set_id: light_blue.id
    )

    Tile.create!(
      x: 9,
      y: 0,
      game: game,
      board_tile: property
    )

    jail = ActionTile.create!(
      name: 'Jail',
      action_id: action.id
    )

    Tile.create!(
      x: 10,
      y: 0,
      game: game,
      board_tile: jail
    )

    pink = PropertySet.create!(
      color: 'pink',
      bonus: 2
    )

    property = Property.create!(
      name: 'Pink 1',
      price: 140,
      property_set_id: pink.id
    )

    Tile.create!(
      x: 11,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Utility.create!(
      name: 'Electric Company',
      price: 150,
      action_id: action.id
    )

    Tile.create!(
      x: 12,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Pink 2',
      price: 140,
      property_set_id: pink.id
    )

    Tile.create!(
      x: 13,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Pink 3',
      price: 160,
      property_set_id: pink.id
    )

    Tile.create!(
      x: 14,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Rail Road 2',
      price: 200,
      property_set_id: rail_roads.id
    )

    Tile.create!(
      x: 15,
      y: 0,
      game: game,
      board_tile: property
    )

    orange = PropertySet.create!(
      color: 'orange',
      bonus: 2
    )

    property = Property.create!(
      name: 'Orange 1',
      price: 180,
      property_set_id: orange.id
    )

    Tile.create!(
      x: 16,
      y: 0,
      game: game,
      board_tile: property
    )

    Tile.create!(
      x: 17,
      y: 0,
      game: game,
      board_tile: community_chest
    )

    property = Property.create!(
      name: 'Orange 2',
      price: 180,
      property_set_id: orange.id
    )

    Tile.create!(
      x: 18,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Orange 3',
      price: 200,
      property_set_id: orange.id
    )

    Tile.create!(
      x: 19,
      y: 0,
      game: game,
      board_tile: property
    )

    free_parking = ActionTile.create!(
      name: 'Free Parking',
      action_id: action.id
    )

    Tile.create!(
      x: 20,
      y: 0,
      game: game,
      board_tile: free_parking
    )

    red = PropertySet.create!(
      color: 'red',
      bonus: 2
    )

    property = Property.create!(
      name: 'Red 1',
      price: 220,
      property_set_id: red.id
    )

    Tile.create!(
      x: 21,
      y: 0,
      game: game,
      board_tile: property
    )

    Tile.create!(
      x: 22,
      y: 0,
      game: game,
      board_tile: chance
    )

    property = Property.create!(
      name: 'Red 2',
      price: 220,
      property_set_id: red.id
    )

    Tile.create!(
      x: 23,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Red 3',
      price: 240,
      property_set_id: red.id
    )

    Tile.create!(
      x: 24,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Rail Road 3',
      price: 200,
      property_set_id: rail_roads.id
    )

    Tile.create!(
      x: 25,
      y: 0,
      game: game,
      board_tile: property
    )

    yellow = PropertySet.create!(
      color: 'yellow',
      bonus: 2
    )

    property = Property.create!(
      name: 'Yellow 1',
      price: 260,
      property_set_id: yellow.id
    )

    Tile.create!(
      x: 26,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Yellow 2',
      price: 260,
      property_set_id: yellow.id
    )

    Tile.create!(
      x: 27,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Utility.create!(
      name: 'Water Works',
      price: 150,
      action_id: action.id
    )

    Tile.create!(
      x: 28,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Yellow 3',
      price: 280,
      property_set_id: yellow.id
    )

    Tile.create!(
      x: 29,
      y: 0,
      game: game,
      board_tile: property
    )

    go_to_jail = ActionTile.create!(
      name: 'Go To Jail',
      action_id: action.id
    )

    Tile.create!(
      x: 30,
      y: 0,
      game: game,
      board_tile: go_to_jail
    )

    green = PropertySet.create!(
      color: 'green',
      bonus: 2
    )

    property = Property.create!(
      name: 'Green 1',
      price: 300,
      property_set_id: green.id
    )

    Tile.create!(
      x: 31,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Green 2',
      price: 300,
      property_set_id: green.id
    )

    Tile.create!(
      x: 32,
      y: 0,
      game: game,
      board_tile: property
    )

    Tile.create!(
      x: 33,
      y: 0,
      game: game,
      board_tile: community_chest
    )

    property = Property.create!(
      name: 'Green 3',
      price: 320,
      property_set_id: green.id
    )

    Tile.create!(
      x: 34,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Rail Road 4',
      price: 200,
      property_set_id: rail_roads.id
    )

    Tile.create!(
      x: 35,
      y: 0,
      game: game,
      board_tile: property
    )

    Tile.create!(
      x: 36,
      y: 0,
      game: game,
      board_tile: chance
    )

    blue = PropertySet.create!(
      color: 'blue',
      bonus: 2
    )

    property = Property.create!(
      name: 'Blue 1',
      price: 350,
      property_set_id: blue.id
    )

    Tile.create!(
      x: 37,
      y: 0,
      game: game,
      board_tile: property
    )

    luxury_tax = ActionTile.create!(
      name: 'Luxury Tax',
      action_id: action.id
    )

    Tile.create!(
      x: 38,
      y: 0,
      game: game,
      board_tile: luxury_tax
    )

    property = Property.create!(
      name: 'Blue 2',
      price: 400,
      property_set_id: blue.id
    )

    Tile.create!(
      x: 39,
      y: 0,
      game: game,
      board_tile: property
    )

    game
  end
end
