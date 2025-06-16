puts "Enter a string :"
a = gets.chomp()
c = ""

for i in a.length().downto(1) do
    c = c + a[i-1]
end

puts c