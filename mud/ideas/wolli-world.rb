puts `clear`
inventory = {
	sword:	1,
	fries:	2,
	wallet:	1,
	chicken: (1..4)
}
inventory.keys.each do |item, amount|
	puts "You have: #{item}"
	puts "C-o-o-l."
end
inventory.keys.each do |item, amount|
	puts "You have #{item} times:#{amount}."
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
	people = ["A dog is walking happyli thruogh the street.", "a cat is laying on the ground under an umbrella.", "A human lady laughs loud.", "A human man is laughs loud."]
	weather = ["it is raining", "the sun shines", "it is cold", "it is warm"]
	puts "You open your Eyes and look around, you are in the"
	puts position.sample
	puts description.sample
	puts stuff_around.sample
	puts people.sample
	puts weather.sample
	puts "You need to rub your Eyes.\ntype: rub eyes"
	ans = gets.chomp
end
until ans == 'rub eyes' or eyes == 'Rub Eyes'
	puts "YOU NEED TO RUB YOUR EYES: rub eyes"
	ans = gets.chomp
end
	if ans == 'rub eyes'
		puts "You rub your Eyes."
		puts "you apear somwhere else:"
		puts position.sample
		puts description.sample
		puts stuff_around.sample
		puts people.sample
		puts weather.sample
	end	
