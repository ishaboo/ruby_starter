Character.create(name: "Mygdin", race: "Elf", hitpoints: 28, strength: 7, x_coord: 1, y_coord: -2, alive: true)
Character.create(name: "Govin", race: "Elf", hitpoints: 26, strength: 6, x_coord: 0, y_coord: 0, alive: true)
Character.create(name: "Donder", race: "Human", hitpoints: 22, strength: 9, x_coord: 0, y_coord: 0, alive: true)
Character.create(name: "Glimli", race: "Dwarf", hitpoints: 30, strength: 11, x_coord: 0, y_coord: 0, alive: true)
Character.create(name: "Ormir", race: "Orc", hitpoints: 32, strength: 12, x_coord: 0, y_coord: 0, alive: true)
Character.create(name: "Moulinea", race: "Quickling", hitpoints: 32, strength: 14, x_coord: 4, y_coord: -20, alive: true)
Character.create(name: "Frealtion", race: "Loneling", hitpoints: 70, strength: 20, x_coord: 4, y_coord: -20, alive: true)

one = InventoryItem.new(name: "Dagger", amount: 1)
one.character = Character.find(1)
one.save
two = InventoryItem.new(name: "Coins", amount: 24)
two.character = Character.find(1)
two.save
three = InventoryItem.new(name: "Sword", amount: 1)
three.character = Character.find(2)
three.save
four = InventoryItem.new(name: "Apple", amount: 3)
four.character = Character.find(3)
four.save
five = InventoryItem.new(name: "Axe", amount: 1)
five.character = Character.find(4)
five.save
six = InventoryItem.new(name: "Axe", amount: 2)
six.character = Character.find(5)
six.save

Pet.create(name: "Smitty", kind: "Racoon", description: "A shaggy looking rodent", x_coord: 0, y_coord: 0, alive: true)
Pet.create(name: "Ruffy", kind: "Cat", description: "A cute little Cat", x_coord: 2, y_coord: 1, alive: true)
Pet.create(name: "Phil", kind: "Dog", description: "A cute little Dog", x_coord: 2, y_coord: -1, alive: true)

Bot.create(name: "Zorb", race: "Goblin", hitpoints: 24, strength: 8, x_coord: 0, y_coord: 1, alive: true)
seven = InventoryItem.new(name: "Long Sword", amount: 1)
seven.character = Bot.find(1)
seven.save
Bot.create(name: "Gibble", race: "Quickling", hitpoints: 13, strength: 10, x_coord: 1, y_coord: 1, alive: true)
Bot.create(name: "Vindy", race: "Human", hitpoints: 20, strength: 9, x_coord: 2, y_coord: 1, alive: true)
Bot.create(name: "Molnir", race: "Dwarf", hitpoints: 27, strength: 10, x_coord: 2, y_coord: -2, alive: true)
Bot.create(name: "Logola", race: "Human", hitpoints: 17, strength: 6, x_coord: 3, y_coord: 2, alive: true)
firteenm = InventoryItem.new(name: "the Book of Logolas Creation", amount: 1)
firteenm.character = Bot.find(5)
firteenm.save
Bot.create(name: "Hummal", race: "God", hitpoints: 100, strength: 3, x_coord: 1, y_coord: -2, alive: true)
Bot.create(name: "Chark", race: "Necromancer", hitpoints: 50, strength: 11, x_coord: 3, y_coord: -3, alive: true)
eight = InventoryItem.new(name: "the Diamond of all Creatures", amount: 1)
eight.character = Bot.find(7)
eight.save

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
MapTile.create(name: "Temple", description: "Temple of Samael", x_coord: 1, y_coord: -3)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 2, y_coord: 0)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 2, y_coord: 1)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 2, y_coord: -1)
MapTile.create(name: "City of Necromancers", description: "A dark big City", x_coord: 3, y_coord: -3)
MapTile.create(name: "Library", description: "The town's public library", x_coord: 3, y_coord: -2)
MapTile.create(name: "Fighting Arena", description: "Molnir's Arena", x_coord: 2, y_coord: -2)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 3, y_coord: 0)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 3, y_coord: 1)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 3, y_coord: -1)
MapTile.create(name: "Market", description: "A busy Market", x_coord: 3, y_coord: -4)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 3, y_coord: -5)
MapTile.create(name: "Road", description: "Just a dusty road", x_coord: 3, y_coord: -6)
MapTile.create(name: "City", description: "The big City", x_coord: 3, y_coord: -7)
MapTile.create(name: "City", description: "The big City", x_coord: 3, y_coord: -8)
MapTile.create(name: "City", description: "The big City", x_coord: 3, y_coord: -9)
MapTile.create(name: "City", description: "The big City", x_coord: 3, y_coord: -10)
MapTile.create(name: "City", description: "The big City", x_coord: 3, y_coord: -11)
MapTile.create(name: "City", description: "The big City", x_coord: 3, y_coord: -12)
MapTile.create(name: "City", description: "The big City", x_coord: 3, y_coord: -13)
MapTile.create(name: "City", description: "The big City", x_coord: 3, y_coord: -14)

MapTile.create(name: "City", description: "The big City", x_coord: 4, y_coord: -7)
MapTile.create(name: "City", description: "The big City", x_coord: 4, y_coord: -8)
MapTile.create(name: "City", description: "The big City", x_coord: 4, y_coord: -9)
MapTile.create(name: "City", description: "The big City", x_coord: 4, y_coord: -10)
MapTile.create(name: "City", description: "The big City", x_coord: 4, y_coord: -11)
MapTile.create(name: "City", description: "The big City", x_coord: 4, y_coord: -12)
MapTile.create(name: "City", description: "The big City", x_coord: 4, y_coord: -13)
MapTile.create(name: "City", description: "The big City", x_coord: 4, y_coord: -14)

MapTile.create(name: "City", description: "The big City", x_coord: 5, y_coord: -7)
MapTile.create(name: "City", description: "The big City", x_coord: 5, y_coord: -8)
MapTile.create(name: "City", description: "The big City", x_coord: 5, y_coord: -9)
MapTile.create(name: "City", description: "The big City", x_coord: 5, y_coord: -10)
MapTile.create(name: "City", description: "The big City", x_coord: 5, y_coord: -11)
MapTile.create(name: "City", description: "The big City", x_coord: 5, y_coord: -12)
MapTile.create(name: "City", description: "The big City", x_coord: 5, y_coord: -13)
MapTile.create(name: "City", description: "The big City", x_coord: 5, y_coord: -14)

MapTile.create(name: "Wall", description: "Just a big Wall", x_coord: 3, y_coord: -15)
MapTile.create(name: "Wall", description: "Just a big Wall", x_coord: 3, y_coord: -16)

MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 4, y_coord: -15)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 4, y_coord: -16)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 4, y_coord: -17)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 4, y_coord: -18)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 4, y_coord: -19)
MapTile.create(name: "Temple of Ginxalin", description: "The ripped up Temple", x_coord: 4, y_coord: -20)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 4, y_coord: -21)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 4, y_coord: -22)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 4, y_coord: -23)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 4, y_coord: -24)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 4, y_coord: -25)

MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 5, y_coord: -15)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 5, y_coord: -16)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 5, y_coord: -17)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 5, y_coord: -18)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 5, y_coord: -19)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 5, y_coord: -21)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 5, y_coord: -22)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 5, y_coord: -23)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 5, y_coord: -24)
MapTile.create(name: "Ginxalin", description: "The destroyed World", x_coord: 5, y_coord: -25)

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
morestuff = InventoryItem.new(name: "Sweet Fries", amount: 50, value: 9)
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
