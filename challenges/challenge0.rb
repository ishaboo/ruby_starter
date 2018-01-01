puts "Welcome, whats your Name?"
name = gets.chomp
puts name
array = ["Apple", 3, "Gold", 4, "   map   ", 1, "flyer", 4,]
array2 = [1,2,44,5,2,323,5,6,7,8]
puts "type: Apple or type: Gold"
ans = gets.chomp
if array.include?(ans)
  puts "reversed:"
	puts array.reverse
  puts "sorted:"
	puts array2.sort
  puts "    map    stripped:"
	puts array[4].strip
  puts "random value:"
	puts array.sample
  puts "just the second to fourth element:"
	puts array[1..3]
end
