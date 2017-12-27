your_inventory = {:belt => 2,}
def buy
	puts "Welcome to the Shop."
	puts "What is your Name?"
	your_name = gets.chomp
	puts your_name
	your_name = gets.chomp
	puts "#{your_name} what weapon you want to buy?"
	buy = gets.chomp
	puts "Cintila sells you a(n) " + buy
	your_inventory << buy
end
buy