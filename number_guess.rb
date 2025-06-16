num = 51
i = 0
puts "--- Guess the number Game ---"
puts "You have 20 guess for the number, it is between 1 to 100"
puts "Guess the number: "

while i<20
    n = gets.chomp().to_i
    if num == n
        puts "Wow! You won!!! You took #{i} chances for the right guess."
        i = 21
    elsif n-num >= 40
        puts "Oops! The guess is too high"
    elsif n-num >= 21 and n-num <= 39
        puts "Oops! The guess is high"
    elsif n-num >= 6 and n-num <= 20
        puts "The guess is high but you are close"
    elsif n-num >= 1 and n-num <= 5
        puts "The guess is high but you are very close"
    elsif n-num <= -40
        puts "Oops! The guess is too low"
    elsif n-num <= -21 and n-num >= -39
        puts "Oops! The guess is low"
    elsif n-num <= -6 and n-num >= -20
        puts "The guess is low but you are close"
    elsif n-num <= -1 and n-num >= -5
        puts "The guess is low but you are very close"
    end
    i+=1
    if i==20
        puts "Oops! You lost. Please, re-run the code."
    end
end