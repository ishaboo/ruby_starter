Character.create(name: "Mygdin", race: "Elf", discipline: "thief", hitpoints: 28, strength: 7, x_coord: 1, y_coord: -2, alive: true)
Character.create(name: "Govin", race: "Elf", hitpoints: 26, strength: 6, x_coord: 0, y_coord: 0, alive: true)
Character.create(name: "Donder", race: "Human", hitpoints: 22, strength: 9, x_coord: 0, y_coord: 0, alive: true)
Character.create(name: "Glimli", race: "Dwarf", discipline: "warrior", hitpoints: 30, strength: 11, x_coord: 0, y_coord: 0, alive: true)
Character.create(name: "Ormir", race: "Orc", hitpoints: 32, strength: 12, x_coord: 0, y_coord: 0, alive: true)

# Character's inventories
5.times do Inventory.create(name: "Satchel") end
Inventory.find(1).update(character_id: 1)
Inventory.find(2).update(character_id: 2)
Inventory.find(3).update(character_id: 3)
Inventory.find(4).update(character_id: 4)
Inventory.find(5).update(character_id: 5)

# Weapons
Inventory.where(character_id: 1).weapons.create(name: "Dagger", damage: 2, amount: 1)
Inventory.where(character_id: 1).inventory_items.create(name: "Coins", amount: 24)
Inventory.where(character_id: 2).weapons.create(name: "Sword", damage: 4, amount: 1)
Inventory.where(character_id: 3).inventory_items.create(name: "Apple", amount: 1)
Inventory.where(character_id: 4).weapons.create(name: "Axe", damage: 3, amount: 1)
Inventory.where(character_id: 5).weapons.create(name: "Axe", damage: 3, amount: 2)

Pet.create(name: "Smitty", kind: "Racoon", description: "A shaggy looking rodent", x_coord: 0, y_coord: 0, alive: true)
Pet.create(name: "Ruffy", kind: "Cat", description: "A cute little Cat", x_coord: 2, y_coord: 1, alive: true)
Pet.create(name: "Phil", kind: "Dog", description: "A cute little Dog", x_coord: 2, y_coord: -1, alive: true)

Bot.create(name: "Zorb", race: "Goblin", hitpoints: 24, strength: 8, x_coord: 0, y_coord: 1, alive: true)
Bot.create(name: "Gibble", race: "Quickling", hitpoints: 13, strength: 10, x_coord: 1, y_coord: 1, alive: true)
Bot.create(name: "Vindy", race: "Human", hitpoints: 20, strength: 9, x_coord: 2, y_coord: 1, alive: true)
Bot.create(name: "Molnir", race: "Dwarf", hitpoints: 27, strength: 10, x_coord: 2, y_coord: -2, alive: true)
Bot.create(name: "Logola", race: "Human", hitpoints: 17, strength: 6, x_coord: 3, y_coord: 2, alive: true)
Bot.create(name: "Hummal", race: "God", hitpoints: 100, strength: 3, x_coord: 1, y_coord: -2, alive: true)
Bot.create(name: "Chark", race: "Necromancer", hitpoints: 50, strength: 11, x_coord: 3, y_coord: -3, alive: true)

# Bots inventories
Bot.find(4).find(1).inventory.create(name: "Satchel")
Bot.find(4).find(1).inventory.create(name: "Satchel")
Bot.find(1).find(1).inventory.create(name: "Satchel")
Bot.find(1).find(1).inventory.create(name: "Satchel")

# Bot's weapons
Inventory.where(bot_id: 4).weapons.create(name: "Axe", damage: 3, amount: 1)
Inventory.where(bot_id: 4).weapons.create(name: "Sword", damage: 4, amount: 1, value: 20)
Inventory.where(bot_id: 1).weapons.create(name: "Club", damage: 2, amount: 1, value: 3)
Inventory.where(bot_id: 1).inventory_items.create(name: "Coins", amount: 7)

MapTile.create(name: "Town Center", description: "The busy town's center", x_coord: 0, y_coord: 0)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 0, y_coord: 1)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 0, y_coord: -1)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 0, y_coord: 2)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 0, y_coord: -2)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 1, y_coord: 0)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 1, y_coord: 1)
MapTile.create(name: "Town Square", description: "The town's shitty square", x_coord: 1, y_coord: -1)
MapTile.create(name: "Bar and Tavern", description: "Rusty's bar and tavern", x_coord: 1, y_coord: 2)
MapTile.create(name: "Temple", description: "Temple of Samael", x_coord: 1, y_coord: -2)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 2, y_coord: 0)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 2, y_coord: 1)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 2, y_coord: -1)
MapTile.create(name: "City of Necromancers", description: "A dark big City", x_coord: 3, y_coord: -3)
MapTile.create(name: "Library", description: "The town's public library", x_coord: 3, y_coord: -2)
MapTile.create(name: "Fighting Arena", description: "Molnir's Arena", x_coord: 2, y_coord: -2)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 3, y_coord: 0)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 3, y_coord: 1)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 3, y_coord: -1)

Shop.create(name: "Dusty Shop", description: "Get your gear here")
Shop.create(name: "Vindys Roller's Shop", description: "Buy some fun stuff here")
Shop.create(name: "Logolas Bookstore", description: "Buy some Books here")

# Inventory of the first shop
Shop.find(1).inventory_items.create(name: "Coins", amount: 0)
Shop.find(1).inventory_items.create(name: "Bread", amount: 3, value: 5)
Shop.find(1).weapons.create(name: "Staff", damage: 2, amount: 1, value: 25)
Shop.find(1).weapons.create(name: "Bow", damage: 1, amount: 1, value: 35)
Shop.find(1).weapons.create(name: "Arrows", damage: 3, amount: 23, value: 5)

# Inventory of the second shop
Shop.find(2).inventory_items.create(name: "Candy", amount: 2, value: 10)
Shop.find(2).inventory_items.create(name: "Tablet", amount: 1, value: 43)
Shop.find(2).inventory_items.create(name: "Phone", amount: 1, value: 40)
Shop.find(2).inventory_items.create(name: "Beehive filled with Honey", amount: 1, value: 4)
Shop.find(2).inventory_items.create(name: "Stars of Freedom", amount: 2, value: 5)
Shop.find(2).inventory_items.create(name: "Donut", amount: 1, value: 3)
Shop.find(2).inventory_items.create(name: "Coins", amount: 0)

# Inventory of the third shop
Shop.find(3).inventory_items.create(name: "Book of Prayers", amount: 1, value: 10)
Shop.find(3).inventory_items.create(name: "Book of Prophecy", amount: 1, value: 11)
Shop.find(3).inventory_items.create(name: "Book of the Earth", amount: 1, value: 5)
Shop.find(3).inventory_items.create(name: "Book of Cooking", amount: 2, value: 9)
Shop.find(3).inventory_items.create(name: "Coins", amount: 0)

# Adding Shops to the Map
MapTile.create(name: "General Store", description: "Dusty's Shoppe", x_coord: 2, y_coord: 2)
MapTile.find(20).update(shop: Shop.find(1))

MapTile.create(name: "Fun Store", description: "Vindys's Shop", x_coord: 2, y_coord: 3)
MapTile.find(21).update(shop: Shop.find(2))

MapTile.create(name: "Book Store", description: "Logolas's Shop", x_coord: 3, y_coord: 2)
MapTile.find(22).update(shop: Shop.find(3))
