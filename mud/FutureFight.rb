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
		puts "Huh?"
		wake = gets.chomp
	end
end