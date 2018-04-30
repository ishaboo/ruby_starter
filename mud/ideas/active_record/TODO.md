## To Do list

### List of remaining tasks:

* [ ] A map in ASCII --> Done
* [ ] A bot to interact with

### Deal with adding a shop and shopkeepers

Check out some other MUDs to see how shops and NPCs are handled there.

Buying method is sorta working, needs adjustments.

Also gonna add a shopkeeper...

### RSpecs

RSpecs as of now do not really make that much sense, how and when could they be helpful for this project?

### Bots

Ideas to build bots...

Would be nice to make pets more available, also talking to bots and giving weapons some kind of additional damage bonus would be good.

Adding maptiles into a single map and inventory_items into a single inventory is also an idea.

Adding a alive true or bad column to the bot, pet and character models sounds like a good idea too.

### Achievements

Got the help menues cleaned, now it would be nice to move other output from controllers to views.

Still need a shopkeeper...

### Need a method or some way to get money

Maybe add some coins to Bots, or a way to earn it... --> Done

Another idea would be a massive map expansion with places that hide things and coins

A sell option within a shop would also be good

* Now Bots have items and money, create a method, or add to the grab command a way to pick up dead Bots stuff... maybe steal it if thief is a skill...

Add pets... --> Done but lacking functionality

### Methods that are needed!!!

A helper method to find if two models are on the same maptile... something general, like 'same_tile'

A method to grab items from dead bots... --> got a method to grab stuff, need a route now.

Routes need to be cleaned.


### Seed adjustments

Need to create an inventory and add items, weapons and coins to it.

Weapons have damage which should be taken into account when fighting, in addition to special skills.


### Ideas to manage skills

When discipline warrior is chosen weapon damage is upped by 10 percent per point on that discipline.

Disciplines can have points from 1 through 10

### Inventory and Map models

Inventory items could belong to an inventory and map_tiles to a map... how would that look?

Maybe map this out on paper, or a visual db tool...

Inventory Creation works as of April 9th 2018, should check out the current DB schema and rename inventory_items to items (branch is called 'inventory-creation')

Now we need to make adjustments in all the relating views and other parts of the logic that might be effected by this major db change... shop buy_items method, grab and drop methods ....


### Schema

Try to look at some other schemas, as it does not seem to make sense to add an Inventory to a MapTile


### Change/Adjust ShopController

In general controllers can be refactored as some methods are too long and duplicate code exists.

When adding inventory as a model though we need to adjust the shop controller so that the buy method still works.


### Before merging inventory-creation

Main things to keep in mind:

- look at the changes in the bot_controller, inventory_controller, and shop_controller, and keep in mind that weapons is not working yet, as additional inventory item, as weapons are attached to inventory

### Refactor:

All the controllers can be re-factored. Think about moving method outputs into views and shortening methods, also move methods to private when split up.

Refactored the announce method in the bots controller today, looking good but might be possible to reduce it even further.

### April 20th

partial refactor looks good, but need some tesiting, especially when implementing the new inventory model

--> What is definitely missing is a method to buy and drop/grab weapons as of right now only inventory_items will be recognized


### April 23rd

inventory-creation branch looks good so far, could use some testing but otherwise ready for merge

### Testing

would like to write some tests that cover retrieving inventory items from the db and printing them to the terminal

also some tests for grabbing items from dead bots and buying them in a store would be nice

need to make sure item counts are utilized

list of where this is important:

- grabing and droping into map

- grabing from corpses

- buying from shops  
