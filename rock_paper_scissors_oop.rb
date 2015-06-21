require "Pry"

class Game
  attr_accessor :person, :computer, :choices
  
  def initialize
    @person = Player.new
    @computer = Player.new
  end

  def choices
     @choices = ['r', 'p', 's']
  end

  def start_game
    until choices.include?(person.choice)
      puts "Rock (r), Paper (p) or scissors (s) ?"
      @person.choice = gets.chomp[0].downcase
    end
    @computer.choice = choices.sample
  end 
    
  def display_winner
    puts "Player choice: #{person.choice}"
    puts "Computer choice: #{computer.choice}"
    if person.choice == computer.choice
      puts "It's a tie."
    elsif person.choice == "r" && computer.choice == "s" || person.choice == "s" && computer.choice == "p" || game.person.choice == "p" && game.computer.choice == "r"   
      puts "You win!"
    elsif 
      puts "Computer wins :("
    end
        
  end
end

class Player 
  attr_accessor :choice
  def initialize
    @choice = " "
  end
end

game = Game.new
game.start_game
game.display_winner

