# Service Object for generation classic map
class GenerateClassicMap
  def call
    game = Game.create!(
      width: 40,
      height: 0,
      house_available: 32,
      hotel_available: 12,
      state: 'pending'
    )

    action = Action.create!(
      action_type: 'TBD'
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
      name: 'Mediterranean Avenue',
      price: 60,
      property_set_id: brown_set.id,
      stage: 0,
      state: "open",
      mortgage: 30,
      house_price: 50
    )

    PropertyRent.create!(
      stage: 0,
      rent: 2,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 10,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 30,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 90,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 160,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 250,
      property_id: property.id
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
      name: 'Baltic Avenue',
      price: 80,
      property_set_id: brown_set.id,
      stage: 0,
      state: "open",
      mortgage: 30,
      house_price: 50
    )

    PropertyRent.create!(
      stage: 0,
      rent: 4,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 20,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 60,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 180,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 320,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 450,
      property_id: property.id
    )

    Tile.create!(
      x: 3,
      y: 0,
      game: game,
      board_tile: property
    )

    income_tax_action = Action.create!(
      action_type: 'LoseMoney',
      data_field: 200
    )

    income_tax = ActionTile.create!(
      name: 'Income Tax',
      action_id: income_tax_action.id
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
      name: 'Reading Railroad',
      price: 200,
      property_set_id: rail_roads.id,
      stage: 0,
      state: "open",
      mortgage: 100
    )

    Tile.create!(
      x: 5,
      y: 0,
      game: game,
      board_tile: property
    )

    light_blue = PropertySet.create!(
      color: '#00ceff',
      bonus: 2
    )

    property = Property.create!(
      name: 'Oriental Avenue',
      price: 100,
      property_set_id: light_blue.id,
      stage: 0,
      state: "open",
      mortgage: 50,
      house_price: 50
    )

    PropertyRent.create!(
      stage: 0,
      rent: 6,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 30,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 90,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 270,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 400,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 550,
      property_id: property.id
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
      name: 'Vermont Avenue',
      price: 100,
      property_set_id: light_blue.id,
      stage: 0,
      state: "open",
      mortgage: 50,
      house_price: 50
    )

    PropertyRent.create!(
      stage: 0,
      rent: 6,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 30,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 90,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 270,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 400,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 550,
      property_id: property.id
    )

    Tile.create!(
      x: 8,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Connecticut',
      price: 120,
      property_set_id: light_blue.id,
      stage: 0,
      state: "open",
      mortgage: 60,
      house_price: 50
    )

    PropertyRent.create!(
      stage: 0,
      rent: 6,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 40,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 100,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 300,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 450,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 600,
      property_id: property.id
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
      name: 'St. Charles Place',
      price: 140,
      property_set_id: pink.id,
      stage: 0,
      state: "open",
      mortgage: 70,
      house_price: 100
    )

    PropertyRent.create!(
      stage: 0,
      rent: 10,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 50,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 150,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 450,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 625,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 750,
      property_id: property.id
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
      action_id: action.id,
      mortgage: 75
    )

    Tile.create!(
      x: 12,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'States Avenue',
      price: 140,
      property_set_id: pink.id,
      stage: 0,
      state: "open",
      mortgage: 70,
      house_price: 100
    )

    PropertyRent.create!(
      stage: 0,
      rent: 10,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 50,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 150,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 450,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 625,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 750,
      property_id: property.id
    )

    Tile.create!(
      x: 13,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Virginia Avenue',
      price: 160,
      property_set_id: pink.id,
      stage: 0,
      state: "open",
      mortgage: 80,
      house_price: 100
    )

    PropertyRent.create!(
      stage: 0,
      rent: 12,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 60,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 180,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 500,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 700,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 900,
      property_id: property.id
    )

    Tile.create!(
      x: 14,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Pennsylvania Railroad',
      price: 200,
      property_set_id: rail_roads.id,
      stage: 0,
      state: "open",
      mortgage: 100
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
      name: 'St. James Place',
      price: 180,
      property_set_id: orange.id,
      stage: 0,
      state: "open",
      mortgage: 90,
      house_price: 100
    )

    PropertyRent.create!(
      stage: 0,
      rent: 14,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 70,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 200,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 550,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 700,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 900,
      property_id: property.id
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
      name: 'Tennessee Avenue',
      price: 180,
      property_set_id: orange.id,
      stage: 0,
      state: "open",
      mortgage: 90,
      house_price: 100
    )

    PropertyRent.create!(
      stage: 0,
      rent: 14,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 70,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 200,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 550,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 700,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 900,
      property_id: property.id
    )

    Tile.create!(
      x: 18,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'New York Avenue',
      price: 200,
      property_set_id: orange.id,
      stage: 0,
      state: "open",
      mortgage: 100,
      house_price: 100
    )

    PropertyRent.create!(
      stage: 0,
      rent: 16,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 90,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 220,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 600,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 800,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1000,
      property_id: property.id
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
      name: 'Kentucky Avenue',
      price: 220,
      property_set_id: red.id,
      stage: 0,
      state: "open",
      mortgage: 110,
      house_price: 150
    )

    PropertyRent.create!(
      stage: 0,
      rent: 18,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 90,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 250,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 700,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 875,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1050,
      property_id: property.id
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
      name: 'Indiana Avenue',
      price: 220,
      property_set_id: red.id,
      stage: 0,
      state: "open",
      mortgage: 110,
      house_price:150
    )

    PropertyRent.create!(
      stage: 0,
      rent: 18,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 90,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 250,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 700,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 875,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1050,
      property_id: property.id
    )

    Tile.create!(
      x: 23,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Illinois Avenue',
      price: 240,
      property_set_id: red.id,
      stage: 0,
      state: "open",
      mortgage: 120,
      house_price: 150
    )

    PropertyRent.create!(
      stage: 0,
      rent: 20,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 100,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 300,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 750,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 925,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1100,
      property_id: property.id
    )

    Tile.create!(
      x: 24,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'B. & O. Railroad',
      price: 200,
      property_set_id: rail_roads.id,
      stage: 0,
      state: "open",
      mortgage: 100
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
      name: 'Atlantic Avenue',
      price: 260,
      property_set_id: yellow.id,
      stage: 0,
      state: "open",
      mortgage: 130,
      house_price: 150
    )

    PropertyRent.create!(
      stage: 0,
      rent: 22,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 110,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 330,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 800,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 975,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1150,
      property_id: property.id
    )

    Tile.create!(
      x: 26,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Ventnor Avenue',
      price: 260,
      property_set_id: yellow.id,
      stage: 0,
      state: "open",
      mortgage: 130,
      house_price: 150
    )

    PropertyRent.create!(
      stage: 0,
      rent: 22,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 110,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 330,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 800,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 975,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1150,
      property_id: property.id
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
      action_id: action.id,
      mortgage: 75
    )

    Tile.create!(
      x: 28,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Marvin Gardens',
      price: 280,
      property_set_id: yellow.id,
      stage: 0,
      state: "open",
      mortgage: 140,
      house_price: 150
    )

    PropertyRent.create!(
      stage: 0,
      rent: 24,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 120,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 360,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 850,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 1025,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1200,
      property_id: property.id
    )

    Tile.create!(
      x: 29,
      y: 0,
      game: game,
      board_tile: property
    )

    go_to_jail_action = Action.create!(
      action_type: 'GoToJail'
    )

    go_to_jail = ActionTile.create!(
      name: 'Go To Jail',
      action_id: go_to_jail_action.id
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
      name: 'Pacific Avenue',
      price: 300,
      property_set_id: green.id,
      stage: 0,
      state: "open",
      mortgage: 150,
      house_price: 200
    )

    PropertyRent.create!(
      stage: 0,
      rent: 26,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 130,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 390,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 900,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 1100,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1275,
      property_id: property.id
    )

    Tile.create!(
      x: 31,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'North Carolina Avenue',
      price: 300,
      property_set_id: green.id,
      stage: 0,
      state: "open",
      mortgage: 150,
      house_price: 200
    )

    PropertyRent.create!(
      stage: 0,
      rent: 26,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 130,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 390,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 900,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 1100,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1275,
      property_id: property.id
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
      name: 'Pennsylvania Avenue',
      price: 320,
      property_set_id: green.id,
      stage: 0,
      state: "open",
      mortgage: 160,
      house_price: 200
    )

    PropertyRent.create!(
      stage: 0,
      rent: 28,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 150,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 450,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 1000,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 1200,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1400,
      property_id: property.id
    )

    Tile.create!(
      x: 34,
      y: 0,
      game: game,
      board_tile: property
    )

    property = Property.create!(
      name: 'Short Line',
      price: 200,
      property_set_id: rail_roads.id,
      stage: 0,
      state: "open",
      mortgage: 100
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
      name: 'Park Place',
      price: 350,
      property_set_id: blue.id,
      stage: 0,
      state: "open",
      mortgage: 175,
      house_price: 200
    )

    PropertyRent.create!(
      stage: 0,
      rent: 35,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 175,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 500,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 1100,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 1300,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 1500,
      property_id: property.id
    )

    Tile.create!(
      x: 37,
      y: 0,
      game: game,
      board_tile: property
    )

   luxury_tax_action = Action.create!(
      action_type: "LoseMoney",
      data_field: 75
    )

    luxury_tax = ActionTile.create!(
      name: 'Luxury Tax',
      action_id: luxury_tax_action.id
    )

    Tile.create!(
      x: 38,
      y: 0,
      game: game,
      board_tile: luxury_tax
    )

    property = Property.create!(
      name: 'Boardwalk',
      price: 400,
      property_set_id: blue.id,
      stage: 0,
      state: "open",
      mortgage: 200,
      house_price: 200
    )

    PropertyRent.create!(
      stage: 0,
      rent: 50,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 1,
      rent: 200,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 2,
      rent: 600,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 3,
      rent: 1400,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 4,
      rent: 1700,
      property_id: property.id
    )

    PropertyRent.create!(
      stage: 5,
      rent: 2000,
      property_id: property.id
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
