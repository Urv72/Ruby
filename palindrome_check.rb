puts "Enter a string :"
a = gets.chomp()
c = ""

for i in a.length().downto(1) do
    c = c + a[i-1]
end

if a == c
    puts "Given string is palindrome."
else
    puts "Given string is not palindrome."
end