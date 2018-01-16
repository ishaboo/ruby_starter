require 'csv'

class Start
	attr_reader :name
	puts "Welcome!"
	puts "Wat is your name? Please type your name."
	name = gets.chomp
	until name != 'poop'
		puts "That is no good name, please take a normal name."
		name = gets.chomp
	end
	if name != 'poop' or name != 'Poop' or name != 'Pupsi' or name != 'pupsi'
		puts "Okay, so your name is #{name}"
	end
end
class Middle
		def write_to_csv(map_tiles)
	    CSV.open(@csv_file, "wb") do |csv|
	      map_tiles.each do |tile|
	        csv << tile[0] + tile[1]
	  end
	  def initialize(csv_file)
	  	@csv_file = csv_file
	  	@maptiles = CSV.read(@csv_file).map do |map|
	  	MapTile.new(map[0], map[1])
	  end

				def move_char(direction)
					    case
					    when direction == 'n'
					      @character.coords[:y] += 1
					    when direction == 's'
					      @character.coords[:y] -= 1
					    when direction == 'e'
					      @character.coords[:x] += 1
					    when direction == 'w'
					      @character.coords[:x] -= 1
					    end
					    puts "You walk #{direction}"

				end
end