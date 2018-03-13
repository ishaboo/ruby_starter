class CharView
  def ask_for(word)
    puts "Please enter #{word}:"
    input = gets.chomp
  end

  def give_msg(message)
    puts message
  end

  def list_all(list)
    list.each do |char|
      puts "#{char.id}: #{char.name}, #{char.race}"
    end
  end

  def view
    puts "Your character can do the following things:\n
    list    --> gives you a list of all the available characters,\n
    stats   --> gives you your stats,\n
    new     --> will create a character,\n
    update  --> will edit an existing character,\n
    load    --> will load a character,\n
    save    --> will save your current position and inventory,\n
    delete  --> will delete an existing character,\n
    inv     --> will show you the current character's inventory,\n
    drop    --> will drop an inventory item,\n
    grab    --> will let you pick up an item"
  end
end