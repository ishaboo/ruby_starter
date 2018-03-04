require "pry-byebug"

class BotsController
  def fight(char, bot)
    # binding.pry
    # A fight between to nearly equally strong characters
    # should last around 4 rounds ...
    while char.hitpoints > 0 && bot.hitpoints > 0
      damage = rand(char.strength)
      counter = rand(bot.strength)
      puts "#{char.name} hits #{bot.name} for
      #{damage} hitpoints"
      bot.update(hitpoints: bot.hitpoints - damage)
      if bot.hitpoints <= 0
        puts "#{bot.name} has died."
      end
      unless bot.hitpoints < 0
        puts "#{bot.name} hits #{char.name} for
        #{counter} hitpoints"
        char.update(hitpoints: char.hitpoints - counter)
        if char.hitpoints <= 0
          puts "#{char.name} has died."
        end
      end
    end

  end
end
