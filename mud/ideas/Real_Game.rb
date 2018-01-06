class Welcome
	gem = install
	puts "Screams of TERROR soround you!"
	puts "	––––––––––––––------––––––––––––––
			||            | || |			 ||
			|–––––––––––––––––––––––––––––––––|
		  /––––––––––––––––––––––––––––––––––––\ 
		  | < /			| || || |		    >> |
		  The Terror_Boss  | |	 \ 	 		   |"
	puts "––––––––––------ / \ ------––––––––––"
	puts "~~~~~~|		' /   \ '’ ’ |~~~~~~~~~~"
	puts "presentated by: Ismael * ’'' "
end
class Name
	puts "Well, i think you need a Name! What is your Name?"
	your_name = gets.chomp
	puts your_name
end
ans = gets.chomp
while ans != 'quit'
ans = gets.chomp
class Map
def default_coords
@coords = { :x =>1, :y => 1 }
a = Map.new({:coords => {:x=>3, :y=>5}})
tiles = [
[["0 0"],[name]],
[["0 1"],["Lian"]],
[["1 1"],["market"]],
[["1 2"],["Terror_Boss"]]
]
end

def move(x, y)
  @coords[:x] += x
  @coords[:y] += y
end
a = Map.new({:coords => {:x=>3, :y=>5}})
tiles = [
[["0 0"],[name]],
[["0 1"],["Lian"]],
[["1 1"],["market"]],
[["1 2"],["Terror_Boss"]]
]
end
class Life
	def hit_points
		@hit_points = [13..30]
		puts hit_points
	end
end
end