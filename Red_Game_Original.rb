class Greeting
	def greeting
		puts "Welcome to the Original Red_Game!"
		puts "Well \n this Red_Game if based on RUBY.\n So have fun!"
		puts "What is your Name?"
		name = gets.chomp
		puts name
		print "Are you shure? y/n"
		ans = gets.chomp
		if ans == 'y'
			puts "okay "
			print name
			elsif ans == 'n'
				puts "What is it then?"
				name = gets.chomp
				puts name
		else
			puts "Huh \n !?!"
		end
	end
end
class Race
	puts "What type of Race do you want to be"
	puts "You can be \n 'Alien', 'Loop', 'Ghost', 'Cylads', 'Slime' \n'Cat', 'Dog',"
	puts "'Elf', 'Human'."
	race = gets.chomp
	puts race
	def race(attributes={})
    	@race = attributes[:race]
  else
  	puts "Huh"
  	end
end
$inventory = {
  "Apples" => 3,
  "Bucks" => 222,
  "Bag" => []
}
def put_into_bag
	puts "What do you want to put into your Bag?"
	put = gets.chomp
	$inventory["Bag"] << put
end
def bag
	puts "okay."
	$inventory["Bag"] << bag
end
put_into_bag
puts "Now your inventory is: #{$inventory}"
class Hitpoints
	def life(brobble)
		@brobble = brobble
	end
end
class Inventory
  def inventory(weapons, items, money, food)
    @weapons = weapons
    @items = items
    @money = money
    @food = food
  end
ans = gets.chomp
puts "spell cr mash"
craft = gets.chomp
if craft == 'cr mash'
	puts "§.You craft mashed apples.§"
  $inventory["Bag"] << bag
end
puts '#{$inventory}' 