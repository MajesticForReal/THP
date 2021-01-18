puts "Quel est votre age ?"
print "> "
age = gets.chomp.to_i
x = age + 1
while x >= 1
puts "Il y a #{x = x - 1} ans, tu avais #{age - x} ans."
end
