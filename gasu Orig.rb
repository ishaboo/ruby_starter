inventory = {:banana => 2, :speer => 1}
puts "Welcome to the Game \n Gasu!"
def position
	puts "A%%%%%%%%%%%%%%%%%%A"
	puts "A	 				A"
	puts "A			̣ö	←A"
	puts "A%%%%%%%%%%%%%%%%%%A"
end
puts "for the map type: map"
map = gets.chomp
if map == "map"
	position
else
end
puts "type: west"
position = gets.chomp
if position == 'west'
	puts "sign: §.The Great Hall.§"
	puts "		spell: fight ghoul"
	puts "		to knock this ghoul"
	puts "		out of position!!!!"
	puts "There is you and: a ghoul."
	puts "Exits [north,]"
	kill = gets.chomp
	if kill == 'fight ghoul'
		puts "You SMASH a ghoul for 15 hp"
		puts "a ghoul coudnt SMASH back"
		puts "because you KILLED it!"
		def position1
			puts "A%%%%%%%%%%%%%%%%%%A"
			puts "A 		(1)A"
			puts "A~~~~~~~~~~~~~#_#~~~+"
		end
		puts "type: map"
		map = gets.chomp
		if map == 'map'
			position1
		end
		puts "type: north"
		walking = gets.chomp
		if walking == 'north'
			puts "§.Portal of Spawn.§"
			puts "Theres a beatyful"
			puts "pool full of water."
			puts "type: drink"
			puts "to drink."
			puts "Exits [east]"
			puts "there is you and: "
			ans = gets.chomp
			if ans == 'drink'
				puts "you drink."
		else
			puts "Huh????!"
			end
			puts "You have an inventory \n type: inv"
			ans = gets.chomp
			if ans == 'inv'
				puts "#{inventory}"
			end
			puts "You can wear the spear. \n type: wear spear"
			ans = gets.chomp
			if ans == 'wear spear'
				puts "you hold an Spear in your Hand"
			end
			puts "If you want to keep playing, nod. type: nod"
			nod = gets.chomp
			if nod == 'nod'
				puts "You nod"
				puts "You may walk trhough the Portal"
				puts "Exits [north]"
			end
			def map2
				puts "$$$$$$$$$$$$$$$=!$$$$~"
				puts ";;;;;;;;;;::;;;;;;;;;;ö"
			end
			walking = gets.chomp
			if walking == 'north'
				puts "You walk trhough the Portal."
				puts "tip = type: map"
				map = gets.chomp
			if map == 'map'
				map2
				puts "§.Hyperion City.§"
				puts "you stand in an"
				puts "Futureristick"
				puts "City."
				puts "Exits [west, north]"
				puts "Theres you and: "
			else
				puts "HUUUUUh?!?"
				walking = gets.chomp
				map = gets.chomp
			end
			end
			ans = gets.chomp
			if ans == 'north'
				puts "§.Hyperion City.§"
				puts "Its a beatyful City,"
				puts "really! It looks cool"
				puts "at te same time."
				puts "Theres a Hill with"
				puts "people"
				puts "Exits [south, west]"
				puts "Theres you and: a Haker, a Cylads"
				puts "tip: map"
			def map3
				puts "$$$$$$$$$$$$$$$=!$$$$ö"
				puts ";;;;;;;4;;;;;;;;;;#;;;"
				puts "				    G"
			end
			map = gets.chomp
			if map == 'map'
				map3
			elsif map == 'fight Cylads'
				puts "Your Spear hits too sharp!"
				puts "and killes a Cylads!!!"
			elsif map == 'fight Haker'
				puts "hes toooo skilled."
			end
	end
end