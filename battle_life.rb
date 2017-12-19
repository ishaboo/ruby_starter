stop = 'no'
ans = ''
inv = ''

def greeting
  puts "Hello, and welcome to my MUD"
  puts "What is your name?"
  name = gets.chomp
end

$inventory = {
  "Apples" => 3,
  "Bucks" => 222
}

name = greeting
puts "Hello #{name}, your inventory is a hash, it looks like this: \n #{$inventory}"

puts "How much do you want to spend?"
spend = gets.chomp

def spend_money(money)
  $inventory["Bucks"] -= money.to_i
end

spend_money(spend)

puts "Now your inventory is: #{$inventory}"
