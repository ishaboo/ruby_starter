require "pry-byebug"

class BotsController
  def announce(char, bots)
    @bot = Bot.where(x_coord: char.x_coord, y_coord: char.y_coord)
    # binding.pry
    if @bot.count == 0
      @bot = nil
    else
      @bot = @bot.first
    end
    if @bot
      puts "You see a #{@bot.race}."
    end
  end

  def fight(char, bots)
    @bot = Bot.where(x_coord: char.x_coord, y_coord: char.y_coord)
    
    if @bot.count == 0
      @bot = nil
    else
      @bot = @bot.first
    end

    if @bot
    # binding.pry
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
        end
        unless @bot.hitpoints <= 0
          puts "#{@bot.name} hits #{char.name} for
          #{counter} hitpoints"
          char.update(hitpoints: char.hitpoints - counter)
          if char.hitpoints <= 0
            sleep 1
            puts "#{char.name} has died."
          end
        end
      end
    end
  end

  private

  # def find_bot(char, bots)
  #   bots.each do |bot|
  #     if char.x_coord == bot.x_coord && char.y_coord == bot.y_coord
  #       return bot
  #     end
  #   end
  # end
  #
  # def find_char(char, bot)
  #   if char.x_coord == bot.x_coord && char.y_coord == bot.y_coord
  #     return true
  #   end
  # end
end
