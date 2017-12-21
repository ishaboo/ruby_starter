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
end
your_inventory = {:bronze_sword => 1, :bucks => 56}
puts your_inventory
answer1 = gets.chomp
if answer1 == 'inv'
		puts your_inventory
end
puts "do you want to play? y/n"
answer2 = gets.chomp
if answer2 == 'y'
	while answer == 'y'
		puts "okay."
		answer == 'y'
		anything = gets.chomp			

		print "====>bye!"
	end	end 