# THE HIGH-LOW GAME
require_relative 'main'

class Hi_low
    attr_accessor
    
    def hi_low
      puts "Welcome!"
      puts "You have chosen the Hi-Low guessing game."
      sleep(1)
      @@random_number = rand(1..20)
      puts "Pick any number between 1 and 20"
    end
  
    def number
      @m = Main.new
      print ">> "
      @guess = gets.to_i
      if @guess > @@random_number
        puts "Your guess is too high."
        deduct
      elsif @guess < @@random_number
        puts "Your guess is too low"
        deduct
      else  @guess == @@random_number
        puts "You are correct, the number is #{@@random_number}. You won $100."
        @main.selection
      end
    end
  
    def deduct
      puts " $10 was deducted from your balance."
      puts "Would you like to try another number? y/n?"
      print ">> "
      incorrect
    end
  
    def incorrect
      case gets.chomp
      when 'y'
        puts "What is your next guess?"
        number
      when 'n'
        @m.menu
      else
        puts "Invalid Entry"
        puts "Would you like to try another number? y/n?"
        print ">> "
        incorrect
      end
    end
  
end