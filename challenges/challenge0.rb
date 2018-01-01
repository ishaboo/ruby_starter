puts "Welcome, whats your Name?"
name = gets.chomp
puts name
array = ["Apple", 3, "Gold", 4, "map", 1, "flyer", 4,]
puts "type: Apple or type: Gold"
ans = gets.chomp
if array.include? == ans
	puts array.reverse
	puts array.sort
	puts array.strip
	puts array.sample
	puts array[1..3]
end