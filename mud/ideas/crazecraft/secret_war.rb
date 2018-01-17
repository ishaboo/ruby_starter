puts "type: create secret_war"
def secret_war
	ans = gets.chomp
	if ans == 'create secret_war'
		puts "How many People are in your team?"
	until ans == [1..500]
		puts "that is no Number"
		ans = gets.chomp
	end
	end
end