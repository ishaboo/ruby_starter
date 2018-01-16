puts "Hallo, Wilkommen zu:\nBilals Spiel™."

puts " W____w"
puts " \  ||/"
puts "%½  | ½%"
puts "	/\ "
puts "Roboter.\nX"

puts "r–––-"
puts "( ' ~"
puts "|		|"
puts " / \ "
puts "Mensch.\nX"

puts "§–––§"
puts "/   ±"
puts "|I \ "
puts "~~~~~"
puts "Schleim."
puts "Wer willst du sein?"
race = gets.chomp
until race == 'Roboter' or race == 'Mensch' or race == 'Schleim' 
	answer = ["Du darfts nur Mensch, Roboter oder Schleim sein.", "Das ist keine richtige wahl der Arten", "Bitte eine richtige antwort eingeben."]
	puts answer.sample
	race = gets.chomp
end
race = gets.chomp
if race == 'Roboter'
	puts "Du bist jetzt ein ROBOTER."
elsif race == 'Mensch'
	puts "Du bist ein Mensch."
elsif race == 'Schleim'
	puts "Schlurp, du bist ein Schleim"
end
first_abillity = ["Schlag_Tanz", "Schlag"]
puts "Was soll dein name sein? Bitte schreib deinen BenutzerName auf."
name = gets.chomp
until name != 'kaka' or name != 'KAKA' or name != 'Kaka' or name != 'pisse' or name != 'Pisse'
	puts "Ieeeh, hör auf und mach dier einen Normalen Namen."
	name = gets.chomp
end
puts "Jetzt brauchst du ein Passwort. Was ist dein FakePasswort."
passwort = gets.chomp
