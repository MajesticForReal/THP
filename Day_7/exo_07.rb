puts "Donnez moi un nombre :"
print "> "
number = gets.chomp.to_i
number.times do |i|
puts i + 1
end
