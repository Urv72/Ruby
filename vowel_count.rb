puts "Enter a string:"
a = gets.chomp().downcase

b = a.count('a') + a.count('e') + a.count('i') + a.count('o') + a.count('u')

puts "Number of vowels is #{b}"