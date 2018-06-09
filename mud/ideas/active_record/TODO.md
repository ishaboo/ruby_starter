## To Do list

### Deal with adding some shopkeepers to shops

Check out some other MUDs to see how shops and NPCs are handled there.

Buying method is sorta working, needs adjustments.

### Bots

Ideas to build bots...

Would be nice to make pets more available, also talking to bots and giving weapons some kind of additional damage bonus would be good.

Adding maptiles into a single map and inventory_items into a single inventory is also an idea.

### Achievements

Got the help menues cleaned, now it would be nice to move other output from controllers to views.

Still need a shopkeeper...

### Need a method or some way to get money

Maybe add some coins to Bots, or a way to earn it... --> Done

Another idea would be a massive map expansion with places that hide things and coins

A sell option within a shop would also be good ---> needs to be done

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

### Map model

Map_tiles could be part of a map... how would that look?

Maybe map this out on paper, or a visual db tool...

### Schema

### Change/Adjust ShopController

In general controllers can be refactored as some methods are too long and duplicate code exists.

When adding inventory as a model though we need to adjust the shop controller so that the buy method still works.

### Refactor:

All the controllers can be re-factored. Think about moving method outputs into views and shortening methods, also move methods to private when split up.

Refactored the announce method in the bots controller today, looking good but might be possible to reduce it even further.

### Testing

would like to write some tests that cover retrieving inventory items from the db and printing them to the terminal

also some tests for grabbing items from dead bots and buying them in a store would be nice

need to make sure item counts are utilized

list of where this is important:

- grabing and droping into map

- grabing from corpses

- buying from shops

### Map

MapTiles could go into a map... what would that accomplish and how would that  be beneficial?

Also it would be nice to be able to only walk alleys and not across the board.

### Pet

Taming and calling a pet works, also letting the pet fight alongside of a character works. Now we need a method to replace the call pet method that maked the pet follow automatically and also give some feedback in form of output...

The pet follows now automatically, but can still be called.

Taming now gives feedback, but it would also be nice to add a "tame" ability to characters, that would be required to tame pets, perhaps with a score that gives probability of success, according to the individual pets difficulty of being tamed.

--> taming with feedback works but there is no difficulty in taming yet

### Earn Experience

Exp is now a field of the character model, but there are no rules to earn experience and level up.

An idea to earn experience would be to have a default experience point amount to gain after beating a bot, depending on bot strength and own level. --> done

Now we need to level up, perhaps some default levels would be good. --> done

level 1 --> 0 - 500 exp
level 2 --> 501 - 1100 exp
level 3 --> 1101 - 1800 exp

### Growing the app

Now that leveling works it would be nice to grow the map also add monsters and bots and maybe add some quests.

### Quests

Would this be a new object model? Or could this be something added to existing models...

What would be the parts of a quest?

  - Questmaster
  - Quest goals --> How could this be triggered/completed
  - Additional/specifc quest bots?

How do other MUDs handle this?

Probably going to make this a new model with a questmaster attached to it. --> should be done in a new branch for testing

Fields for quest model: name, length_in_minutes, reward_in_exp, goal --> this should be a descriptive string
Quests should belond to a Questmaster, which is basically a special bot that is bound to a certain maptile.

### Thoughts on refactoring as of June 2018

Inheritance could be an interesting topic when refatoring, to shorten code
