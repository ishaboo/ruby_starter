## Here we are
# MVC, SQLite3 and ActiveRecord

This is a database backed MVC based small MUD that needs needs a lot of work.

### List of remaining tasks:

* [ ] A map in ASCII
* [ ] A way to drop items on the map and retrieve them
* [ ] A store to buy items
* [ ] A bot to interact with
* [ ] Fighting stats and capabilities


### Deal with adding a shop and shopkeepers

Check out some other MUDs to see how shops and NPCs are handled there.

Buying method is sorta working, needs adjustments.

The commands help list is growing too large, it would be good to break up.
Also gonna add a shopkeeper...

### Ideas for the Help menu

character help options:

- character:

new, load, update, delete, inv, drop, grab, list, save

- map:

look, inspect, look more, pos, shop

- shop:

shop, list items, buy

- general:

help, stop

### RSpecs

RSpecs as of now do not really make that much sense, how and when could they be helpful for this project?

### Bots

Ideas to build bots...

Would be nice to make pets more available, also talking to bots and giving weapons some kind of additional damage bonus would be good.

Adding maptiles into a single map and inventory_items into a single inventory is also an idea.

Adding a alive true or bad column to the bot, pet and character models sounds like a good idea too.
