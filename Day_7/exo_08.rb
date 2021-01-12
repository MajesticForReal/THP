puts "Donnez moi un nombre :"
print "> "
number = gets.chomp.to_i
min_num = 0
while number >= min_num
	puts number
	number = number - 1
end
