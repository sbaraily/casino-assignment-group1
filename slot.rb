# THE SLOT GAME
require_relative 'main'




class Slots
    def multiplier(s1, s2, s3)
        if s1==s2 && s2==s3
          3
        elsif s1==s2 || s2==s3 || s1==s3
          2
        else
          0
        end
    end
    
    def run_slots
        slotImageList = %w[Cherry Orange Plum Bell Melon Bar]
    
        puts "How much total money would you like to play with today?"
        @cash = gets.chomp.to_i
        # cash = instance_variable_get
            
        loop do
            puts "Total Cash: #{@cash}"
            puts "How much would you like to bet?"
            bet = gets.chomp.to_i
            @cash -= bet
            slotImage1 = slotImageList.sample
            slotImage2 = slotImageList.sample
            slotImage3 = slotImageList.sample
    
            puts "#{slotImage1} - #{slotImage2} - #{slotImage3}"
    
            winnings = bet * multiplier(slotImage1, slotImage2, slotImage3)
    
            puts "You have won$ #{winnings}"
    
            @cash += winnings
    
            puts "Would you like to continue? (Press 'Y' to continue)"
    
            unless gets.chomp=="y"
                puts "You have ended with $#{@cash}"
                break
            end
        end
    end
       
    run_slots if __FILE__==$0
end
