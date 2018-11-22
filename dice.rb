# THE DICE GAME 
require_relative 'bank'

class Dice
    def initialize
      roll
    end
    
    def roll
      @die1 = 1 + rand(6)
      @die2 = 1 + rand(6) 
    end
    
    def show_dice
      print "\tDie 1: ", @die1,  " Die 2: ", @die2
    end
    
    def show_sum
      print "\tSum of dice is: ", @die1 + @die2, ".\n"
      @sum = @die1 + @die2
    end 

    def dice_sum
        @sum
    end
end


class Profile
    attr_accessor :player, :amount

    def initialize (player_name, bankroll)
        @player = player_name
        @amount = bankroll
    end

    def info
        puts "Welcome #{@player}! Your starting amount is: $#{@amount}"
    end

    def bet
        puts "Please place your bet : "
        print "> "
        @bet_amount = gets.to_i
        if @bet_amount <= @amount && @bet_amount > 0
            puts "You placed $#{@bet_amount} \t Good Luck ! \n"
            puts "********************************"

        elsif @bet_amount <= 0
            puts "Your bet cannot bet a Zero or a Negative amount !* facepalm * "
            bet
        else
            puts "Your bet is too high, You High Roller !* Eyes rolls *"
            bet
        end
    end
end




