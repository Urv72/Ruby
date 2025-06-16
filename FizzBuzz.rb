for i in 1...100
    if i%3 == 0 && i%5 != 0
        puts "#{i} Fizz"
    elsif i%5 == 0 && i%3 != 0
        puts "#{i} Buzz"
    elsif i%3 == 0 && i%5 == 0
        puts "#{i} FizzBuzz"
    else
        puts "#{i} No Fizz No Buzz"
    end
end