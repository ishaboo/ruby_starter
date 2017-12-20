puts "Welcome to Battler_life."
puts "What is your Name?"
your_name = gets.chomp
puts your_name
answer = 'no'
while answer == 'no'
	puts "What is your_spell?"
	yourspell = gets.chomp
	print yourspell + " are you shure ? yes/no"
	answer = gets.chomp
	if answer == 'yes'
		puts "okay so  #{yourspell} is your spell."
	else
		your_spell = gets.chomp
		puts "Enter your spell"
	end
your_inventory = {:bronze_sword => 1, :bucks => 56}
puts your_inventory
answer = gets.chomp
if answer == 'inv'
		puts your_inventory
end
puts "do you want to play? yes/no"
answer = gets.chomp
while answer == 'yes'
	if answer == 'yes'
	else 
		puts "====>bye!"
	end
end
end