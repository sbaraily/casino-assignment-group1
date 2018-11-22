

class Bank

    def money
        puts "Enter the amount you want to start with : "
        @cash = gets.chomp.to_i
        loop do 
            puts "Enter your bet: "        
            @bet = gets.chomp.to_i 
            if 
            @cash -= @bet
            puts "Your balance currently is $#{@cash}."
            end
        end
    end
end