puts "############FutureGem the MUD\n.
	Welcome Human."
puts "[§§§§§§§§]"
puts "|				 |"
puts "Programer: Ismael \n Helpers: Pas"
puts "L_______||"
puts "Whats your Name?"
name = gets.chomp
puts "Welcome, #{name}"
puts "There are DIFFERENT Races, but you can only have some Races."
def races
	puts "°°°°°°°°°°°°°"
	puts "Alien:\n Fire → Slime"
	puts "Cutter:\n Chomp → Ball"
	puts "Human"
	puts "Cylads:\n Killer"
	puts "Pick one:"
end
races
race = gets.chomp
	if race == 'Alien' or race == 'Al'
		puts "You are a Alien"
		race_picked = {:Alien => 1}
	elsif race == 'Cutter' or race == 'Cu'
		puts "You are a Cutter"
		race_picked = {:Cutter => 1}
	elsif race == 'Human' or race == 'Hu'
		puts "You are a Human"
		race_picked = {:Human => 1}
	elsif race == 'Cylads' or race == 'Cy'
		puts "You are a Cylads"
		race_picked = {:Cylads => 1}
	else
		until race == 'Alien' or races == 'Cutter' or races == 'Human' or races == 'Cylads'
			puts "That is NO VALID RACE!!!!!!"
			race = gets.chomp
			if race == 'Alien' 
				puts "You are a Alien"
				race_picked = {:Alien => 1}
			elsif race == 'Cutter' 
				puts "You are a Cutter"
				race_picked = {:Cutter => 1}
			elsif race == 'Human' 
				puts "You are a Human"
				race_picked = {:Human => 1}
			elsif race == 'Cylads' 
				puts "You are a Cylads"
				race_picked = {:Cylads => 1}
			end
		end
	end
puts "Your sight is BLURRY, you're SLEEPY!"
puts "to sleep type: sleep or: sl"
sleep = gets.chomp
if sleep == 'sleep' or sleep == 'sl'
	puts "You sleep.²²²"
	puts "type: wake"
end
wake = gets.chomp
if wake == 'wake' or wake == 'w'
	puts "You wake up"
else 
	while wake != 'wake' or wake != 'w'
		puts "You are tooo SLEEPY to do that."
		wake = gets.chomp
	end
end
inventory = {:Dirtdagger => 1}
puts "Your Inventory is #{inventory}."
def map
	puts "§§§§§§§§ö"
	puts "|				|"
	puts "L______||"
end
puts "type: map for th map"
map = gets.chomp
if map == 'map'
	map
	puts "Exits [west, down]"
end
puts "type: west or down"
walking = gets.chomp
if walking == 'west'
	puts "§.The Ruby Roof.§"
	puts "There is a good"
	puts "View, the City is"
	puts "so big that you "
	puts "cant see the end..."
	puts "Exits [west, east]"
	puts "there is you and :"
elsif walking == 'down'
	puts "§.The dark Ruby gem.§"
	puts "There'se a light hall"
	puts "in the middle there'se"
	puts "an Black Ruby gem."
	puts "there'se a sign"
	puts "Read sign type: read sign"
	puts "Exits [east, up]"
	puts "There is you and: a ghoul"
end
ans = gets.chomp
if ans == 'read sign'
	puts "spell: fight ghoul"
end
kill = gets.chomp
if kill == 'fight ghoul'
	puts "You SMASH a ghoul for 15 hp"
	puts "a ghoul coudnt SMASH back"
	puts "because you KILLED it!"
end

def map1
	puts "§§§§ §ö§"
	puts "			 |"
	puts "L_____||"
end
puts "type: map"
ans = gets.chomp
if ans == 'map'
	map1
end
puts "Where are you goin?"
walking = gets.chomp
if walking == 'west'
	puts "§.DEAD END.§"
	puts "Exits [east]"
end
