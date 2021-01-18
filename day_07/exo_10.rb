puts "Quelle est votre annee de naissance ?"
print "> "
birth = gets.chomp.to_i
max_num = 2021
y = birth
while birth <= max_num
puts "En #{birth}, vous aviez #{birth - y} ans !"
birth = birth + 1
end
