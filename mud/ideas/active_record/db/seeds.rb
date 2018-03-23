Character.create(name: "Mygdin", race: "Elf", hitpoints: 28, strength: 7, x_coord: 1, y_coord: -2, alive: true)
Character.create(name: "Govin", race: "Elf", hitpoints: 26, strength: 6, x_coord: 0, y_coord: 0, alive: true)
Character.create(name: "Donder", race: "Human", hitpoints: 22, strength: 9, x_coord: 0, y_coord: 0, alive: true)
Character.create(name: "Glimli", race: "Dwarf", hitpoints: 30, strength: 11, x_coord: 0, y_coord: 0, alive: true)
Character.create(name: "Ormir", race: "Orc", hitpoints: 32, strength: 12, x_coord: 0, y_coord: 0, alive: true)

# Character's items
Character.find(1).inventory_items.create(name: "Dagger", amount: 1)
Character.find(1).inventory_items.create(name: "Coins", amount: 24)
Character.find(2).inventory_items.create(name: "Sword", amount: 1)
Character.find(3).inventory_items.create(name: "Apple", amount: 3)
Character.find(4).inventory_items.create(name: "Axe", amount: 1)
Character.find(5).inventory_items.create(name: "Axe", amount: 2)

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

# Bots items
Bot.find(4).inventory_items.create(name: "Axe", amount: 1)
Bot.find(4).inventory_items.create(name: "Sword", amount: 1, value: 20)

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
money = InventoryItem.new(name: "Coins", amount: 0)
money.shop = Shop.find(1)
money.save
stuff = InventoryItem.new(name: "Bread", amount: 3, value: 5)
stuff.shop = Shop.find(1)
stuff.save
some = InventoryItem.new(name: "Staff", amount: 1, value: 25)
some.shop = Shop.find(1)
some.save
more = InventoryItem.new(name: "Bow", amount: 1, value: 35)
more.shop = Shop.find(1)
more.save
things = InventoryItem.new(name: "Arrows", amount: 23, value: 5)
things.shop = Shop.find(1)
things.save

# Inventory of the second shop
morestuff = InventoryItem.new(name: "Candy", amount: 2, value: 10)
morestuff.shop = Shop.find(2)
morestuff.save
morestuff = InventoryItem.new(name: "Tablet", amount: 1, value: 43)
morestuff.shop = Shop.find(2)
morestuff.save
morestuff = InventoryItem.new(name: "Phone", amount: 1, value: 40)
morestuff.shop = Shop.find(2)
morestuff.save
morestuff = InventoryItem.new(name: "Beehive filled with Honey", amount: 1, value: 4)
morestuff.shop = Shop.find(2)
morestuff.save
morestuff = InventoryItem.new(name: "Stars of Freedom", amount: 2, value: 5)
morestuff.shop = Shop.find(2)
morestuff.save
morestuff = InventoryItem.new(name: "Donut", amount: 1, value: 3)
morestuff.shop = Shop.find(2)
morestuff.save
morestuff = InventoryItem.new(name: "Coins", amount: 0)
morestuff.shop = Shop.find(2)
morestuff.save

# Inventory of the third shop
books = InventoryItem.new(name: "Book of prayers", amount: 1, value: 10)
books.shop = Shop.find(3)
books.save
books = InventoryItem.new(name: "Book of prophecy", amount: 1, value: 11)
books.shop = Shop.find(3)
books.save
books = InventoryItem.new(name: "Book of the Earth", amount: 1, value: 5)
books.shop = Shop.find(3)
books.save
books = InventoryItem.new(name: "Book of Kooking", amount: 2, value: 9)
books.shop = Shop.find(3)
books.save
books = InventoryItem.new(name: "Coins", amount: 0)
books.shop = Shop.find(3)
books.save

# Adding Shops to the Map
k = MapTile.new(name: "General Store", description: "Dusty's Shoppe", x_coord: 2, y_coord: 2)
k.shop = Shop.find(1)
k.save

kyz = MapTile.new(name: "Fun Store", description: "Vindys's Shop", x_coord: 2, y_coord: 3)
kyz.shop = Shop.find(2)
kyz.save

store = MapTile.new(name: "Book Store", description: "Logolas's Shop", x_coord: 3, y_coord: 2)
store.shop = Shop.find(3)
store.save
