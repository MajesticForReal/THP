puts "Quelle est votre annee de naissance ?"
print "> "
birth = gets.chomp.to_i
max_num = 2021
while birth <= max_num
puts birth
birth = birth + 1
end
