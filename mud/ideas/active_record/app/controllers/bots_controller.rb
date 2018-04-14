require "pry-byebug"

class BotsController
  def announce(char, bots)
    find_bot(char, bots)
    # ugly temporary solution screaming for a good ol refactoring
    if @bot
      if @bot.alive?
        puts "You see a #{@bot.race}."
      elsif @bot.alive == false
        puts "You see a dead #{@bot.race}."
      end
    end
  end

  def search_corpse(char)
    corpse = find_corpse(char)
    if corpse
      puts "You are searching a dead #{corpse.race}..."
      unless corpse.inventory.inventory_items.empty?
        corpse.inventory.inventory_items.each do |item|
          puts "You find #{item.name}"
        end
      else
        puts "#{corpse.race} has nothing..."
      end
    end
  end

  def get_item(char)
    search_corpse(char)
    # real shitty to do this twice... gotta write a method to shorten this!!!
    corpse = find_corpse(char)
    if corpse.inventory.inventory_items
      print "Which item do you want to grab?\n> "
      item_name = gets.chomp
      if corpse.inventory.inventory_items
        corpse.inventory.inventory_items.each do |item|
          if item.name == item_name
            char.inventory_items << item
            item.character_id = char.id
            item.bot_id = nil
            item.save
          end
        end
        char.save
        puts "Your position has been saved!"
        char.reload
      end
    end
  end

  def fight(char, bots)
    find_bot(char, bots)

    if @bot

    # A fight between to nearly equally strong characters
    # should last around 4 rounds ...
      while char.hitpoints > 0 && @bot.hitpoints > 0
        damage = rand(char.strength)
        counter = rand(@bot.strength)
        puts "#{char.name} hits #{@bot.name} for
        #{damage} hitpoints"
        @bot.update(hitpoints: @bot.hitpoints - damage)
        sleep 1
        if @bot.hitpoints <= 0
          puts "#{@bot.name} makes a last gurgling sound..."
          sleep 1
          puts "#{@bot.race} has died."
          @bot.update(alive: false)
        end
        unless @bot.hitpoints <= 0
          puts "#{@bot.name} hits #{char.name} for
          #{counter} hitpoints"
          char.update(hitpoints: char.hitpoints - counter)
          if char.hitpoints <= 0
            sleep 1
            puts "#{char.name} has died."
            char.update(alive: false)
          end
        end
      end
    end
  end

  private

  def find_corpse(char)
    bots = Bot.all
    @bot = Bot.where(x_coord: char.x_coord, y_coord: char.y_coord)
    unless @bot.count == 0 || @bot.first.alive == true
      return @bot.first
    end
  end

  def find_bot(char, bots)
    @bot = Bot.where(x_coord: char.x_coord, y_coord: char.y_coord)

    # This needs to change if we want to have more than one bot in a tile
    if @bot.count == 0
      return @bot = nil
    else
      return @bot = @bot.first
    end
  end

end
