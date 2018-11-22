require 'artii'
require_relative 'dice'
require_relative 'hilow'
require_relative 'slot'


@a = Artii::Base.new

def computer
    puts "\n\n ----- The System Rolled ----- \n\n"
    @d = Dice.new
    @d.show_dice
    puts
    @d.show_sum
    puts "------------------------------"
end

def seol_dice

    @seol.bet
    puts "\n\n -------- You Rolled -------- \n\n"
    @p1 = Dice.new
    @p1.show_dice
    puts
    @p1.show_sum
    puts "-----------------------------"
end

def seol_high_low
    @s = Hi_low.new
    @s.hi_low
    @s.number
end

def seol_slots
    @sl = Slots.new
    @sl.run_slots
end


@balance = []

class Main
    def menu
        puts "\n\n*** SELECT AND OPTION *** \n\n"
        puts "1. Slot"
        puts "2. High/Low"
        puts "3. Dice"
        puts "4. Exit"

    end
end

@main = Main.new

def greeting
    puts "\n\n"
    @seol = Profile.new("Mario ", 1000)
    @seol.info
    selection
end


def selection
    @main.menu
    print"> "
    case gets.to_i
    when 1
        puts @a.asciify('SLOTS !!!')
        seol_slots
    when 2
        puts @a.asciify('HIGH-LOW !!')
        seol_high_low
    when 3
        puts @a.asciify('DICE !')
        seol_dice
        puts "\n"
        computer
        dice_compare
    when 4
        puts "Thanks for visiting. Come Again!"
        sleep(2)
        print `clear`
    else
        puts "Wrong Selection!!"
    end
end

def dice_compare

    if (@d.dice_sum < @p1.dice_sum)
        puts "\n** You Win! **"
        @var1 = @seol.instance_variable_get(:@amount)
        @var2 = @seol.instance_variable_get(:@bet_amount)
        @win = @var1 + @var2 * 2
        puts "Remaining Balance: $#{@win}"
        @balance << @win
        selection
        
    elsif (@d.dice_sum == @p1.dice_sum)
        puts "\n** Draw! **"
        @var1 = @seol.instance_variable_get(:@amount)
        @var2 = @seol.instance_variable_get(:@bet_amount)
        puts "Remaining Balance: $#{@amount}"
        @balance << @amount
        selection

    else
        puts "\n** You Lose! **"
        @var1 = @seol.instance_variable_get(:@amount)
        @var2 = @seol.instance_variable_get(:@bet_amount)
        @low = @var1 - @var2
        puts "Remaining Balance: $#{@low}"
        @balance << @low
        selection
    end
    
end

greeting
