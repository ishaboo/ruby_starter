puts `clear`
inventory = {
	sword:	1,
	fries:	2,
	wallet:	1,
	chicken: 4
}
puts "Please press Enter."
quick_enter = gets.chomp
puts `clear`
inventory.keys.each do |item, amount|
	puts "You have: #{item}"
	puts "C-o-o-l."
end
inventory.each do |item, amount|
	puts "You have #{item} :#{amount}."
	puts "G-o-o-d"
end
puts "\nWell, I guess you need al look around.\ntype: look"
ans = gets.chomp
until ans == 'look'
	puts "You first need to look around."
	ans = gets.chomp
end
if ans == 'look'
	position = ["The Numeral City.", "The cool City-Parks", "Cafe street", "Coola street"]
	description = ["it is a cool city place\nthere are alots of\npeople around.", "There is fresh air\nit is good to be\naround the place.", "It looks like there\nis no dust here..?"]
	stuff_around = ["a few Plants are laying on the ground.", "a Bicicle is here.","a bone layes on the street."]
	people = ["A dog is walking happyli thruogh the street.", "a cat is laying on the ground under an umbrella.", "A human lady laughs loud.", "A human man is laughs loud.", "an evil Ghoul doesnt care about anything"]
	weather = ["it is raining", "the sun shines", "it is cold", "it is warm"]
	puts "You open your Eyes and look around, you are in the"
	monster_name = ["Evil Ghoul", "mad Ghoul", "Deadly Ghoul"]
	puts position.sample
	puts description.sample
	puts stuff_around.sample
	puts people.sample
	puts people.sample
	puts weather.sample
	puts "You need to rub your Eyes.\ntype: rub eyes"
	ans = gets.chomp
end
until ans == 'rub eyes'
	puts "YOU NEED TO RUB YOUR EYES: rub eyes"
	ans = gets.chomp
end
if ans == 'rub eyes'
	puts "You rub your Eyes."
	puts "you auctally apear somwhere else:"
	puts position.sample
	puts description.sample
	puts stuff_around.sample
	puts people.sample
	puts weather.sample
end
class Fight
	@@your_hitpoints = 99
	def initialize(monster_name, power='Flight')
		@monster_name = monster_name.sample
		@power = "Poisin"
		@hitpoints = 50
	end
	def hiting(monster_name)
		if @hitpoints > 0
			damage = [4, 10, 31, 6, 93]
			puts "a #{monster_name.sample} hits you for #{damage.sample}"
			@@your_hitpoints -= damage.sample
			puts "Monster dead."
			puts "#{@@your_hitpoints}" 
		end
	end
	ans = gets.chomp
	if ans == 'kill a Ghoul'
		hiting
	end
end