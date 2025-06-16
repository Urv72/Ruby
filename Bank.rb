class Bank
    @@bal = 10000.0 # Class Variable

    def deposit
        puts "\n--------------------------\n"
        puts "Enter an amount to deposit"
        dep = gets.chomp().to_f # Local Variable
        @@bal = @@bal + dep
        puts "\nYour current balance is #{@@bal}."
    end

     def withdraw
        puts "\n--------------------------\n"
        puts "Enter an amount to withdraw"
        withdrawal = gets.chomp().to_f # Local Variable
        if withdrawal > @@bal
            puts "\nYour available balance is less than your requested withdrawal."
            puts "The request cannot be completed."
        else
            @@bal = @@bal - withdrawal
        end
        puts "\nYour current balance is #{@@bal}."
    end

    def balance_check
        puts "\n--------------------------\n"
        puts "Your current balance is #{@@bal}."
    end

end

c = 0
while c != 4
    puts "\n--------------------------\n"
    puts "Enter a number to perform an operation"
    puts "\n1.Deposit \n2.Withdraw \n3.Check balance \n4.Exit\n"
    c = gets.chomp().to_i
    cust = Bank. new

    case c
    when 1
        cust.deposit
    when 2
        cust.withdraw
    when 3
        cust.balance_check
    when 4
        puts "\nThank you for using the bank app today.\n"
    else
        puts "\nPlease, enter a valid number."
    end
end