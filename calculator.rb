puts "Enter two numbers:"
a = gets.chomp().to_f
b = gets.chomp().to_f

puts "Choose an operator +, -, *, /"
c = gets.chomp()

if c == '+'
    puts "Sum of #{a} and #{b} is #{(a+b).round(2)}"
elsif c == '-'
    puts "Subtraction of #{a} and #{b} is #{(a-b).round(2)}"
elsif c == '*'
    puts "Multiplication of #{a} and #{b} is #{(a*b).round(2)}"
elsif c == '/'
    puts "Division of #{a} and #{b} is #{(a/b).round(2)}"
end