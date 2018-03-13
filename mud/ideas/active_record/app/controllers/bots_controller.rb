require "pry-byebug"

class BotsController
  def announce(char, bots)
    find_bot(char, bots)

    if @bot
      puts "You see a #{@bot.race}."
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

  def find_bot(char, bots)
    @bot = Bot.where(x_coord: char.x_coord, y_coord: char.y_coord)

    # This needs to change if we want to have more than one bot in a tile
    if @bot.count == 0 || @bot.first.alive == false
      return @bot = nil
    else
      return @bot = @bot.first
    end
  end

end
