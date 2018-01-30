class CharactersView
  def start_game
    banner = Banner.new
    puts banner.greeting
  end

  def display_tasks
    puts "Welcome"
    puts "PLease enter 'new' to create a new Character"
  end

  def ask_for(word)
    puts "Please enter #{word}:"
    input = gets.chomp
  end

  def give_msg(message)
    puts message
  end
end
