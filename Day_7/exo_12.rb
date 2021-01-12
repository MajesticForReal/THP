puts "Quel est votre age ?"
print "> "
age = gets.chomp.to_i
x = age + 1
while x >= 1
	if ((x = x - 1) == (age - x))
		then puts "Il y a #{x} ans, tu avais la moitié de l'âge que tu as aujourd'hui."
		else puts "Il y a #{x} ans, tu avais #{age - x} ans."
	end
end
