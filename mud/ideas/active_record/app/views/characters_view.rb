class CharactersView
  def start_game
    banner = Banner.new
    puts banner.greeting
    puts "Welcome"
  end

  def display_tasks
    puts "\n****----****"
    print "Enter your command:\n> "
  end

  def ask_for(word)
    puts "Please enter #{word}:"
    input = gets.chomp
  end

  def give_msg(message)
    puts message
  end

  def list_all(list)
    list.each_with_index do |char, i|
      i += 1
      puts "#{i}: #{char.name}, #{char.race}"
    end
  end

  def commands
    puts "\nYour available comands are:"
    puts "new to create a character,"
    puts "update to edit a character,"
    puts "load to load a character,"
    puts "delete to delete a character,"
    puts "inv to show you characters inventory,"
    puts "look to read the map tile's name"
    puts "pos to show your characters coordinates,"
    puts "list to view all characters,"
    puts "save to save your coordinates,"
    puts "help to view this list,"
    puts "stop to end this script."
  end
end
