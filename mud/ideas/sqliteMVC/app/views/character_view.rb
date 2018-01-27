class CharactersView
  def new_char(field)
    puts "What is your character's #{field}?"
    answer = gets.chomp
  end

  def view_char
    id = find_char
    char = Character.find(id)
    puts "name: #{char.name} race: #{char.race}"
  end

  def find_char
    puts "Enter your Character's ID"
    char_id = gets.chomp
  end
end
