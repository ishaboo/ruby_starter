puts "Ruby is awesome!"
smalls_weigth = 22
puts "So, welcome Being. You may get a Cat or a Dog, \nhis Name will be Smalls."
smalls = gets.chomp
if smalls == 'Cat' or smalls == 'cat' or smalls == 'ca' or smalls == 'c'
	puts "Your Partner Smalls, is a Cat."
	your_pet = smalls
elsif smalls == 'Dog' or smalls == 'do' or smalls == 'd'
	puts "Your Partner Smalls, is a Dog."
	your_pet = smalls
else
	until smalls == 'Cat' or smalls == 'Dog'
		puts "No pet. EATHER Dog or Cat"
		smalls = gets.chomp
	end
end
def attack1
	attack_one = ['fire_call', 'flash_run', 'burning_under_turn']
	# I feel Free.
end
puts "Okay, so I can finally ask, what shuold your_name be?" 
your_name = gets.chomp
class Helpers
	answer = gets.chomp
	@@num_of_helpers = 1

	def initialize
		@@num_of_helpers += 2
	end
	def helpers_name
		@helpers_name = your_name += 1 
	end
	if answer == 'serve'
		puts "Your Helpers serve you Food"
	end
end
class Map
	answer = gets.chomp
	def map(x, y)
		@@x = 1
		@@y = 0
	end
	
end