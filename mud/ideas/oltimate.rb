class Game
	puts "Welcome Human, please wait."
	puts "Loading... Figure!"
	puts "You need a name, what is it?"
	name = gets.chomp
	puts "Welcome #{name}"
	puts "Loading World..."
	titles = [
		  [["0 0"],[name.size]],
		  [["0 1"],["battlant"]],
		  [["1 0"],["market"]],
		  [["1 1"],["Fire mantis"]]
		]
	puts titles
	puts " Where do you want to go west, east, north, south ?"
	ans = gets.chomp
	while ans != 'quit' or ans != 'q'
		ans = gets.chomp
		def map1(x, y)
			@x = 0
			@y = 0
	  end 
		if ans == 'west' or ans == 'w'
			@y = 1
			@x = 0
			puts map1
		elsif ans == 'east' or ans == 'e'
			@y = 1
			@x = 0
			puts map1
		elsif ans == 'north' or ans == 'n'
			@y = 0
			@x = 1
			puts map1
		elsif ans == 'south' or ans == 's'
			@y = 0
			@x = 2
			puts map1
		end
	end
end