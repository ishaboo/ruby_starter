class CharactersView
  def new_char(field)
    puts "What is your character's #{field}?"
    answer = gets.chomp
  end

  def view_char(char)
    puts "name: #{char.name} race: #{char.race}"
  end

  def find_char
    puts "Enter your Character's ID"
    char_id = gets.chomp
  end
end
