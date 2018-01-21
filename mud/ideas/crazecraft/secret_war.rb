puts "Welcome, to secret_war!"
ans = gets.chomp
if ans == 'create secret_war' or ans == 'war'
	puts "How many People are in your team? [1..800]"
while ans != [1..800]
	puts "That is no valid Number"
	ans = gets.chomp
end
puts "Aha, Intresting...#{ans}"
end