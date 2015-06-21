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
    
  def display_winner(game)
    puts "Player choice: #{game.person.choice}"
    puts "Computer choice: #{game.computer.choice}"
    if game.person.choice == game.computer.choice
      puts "It's a tie."
    elsif game.person.choice == "r" && game.computer.choice == "s" || game.person.choice == "s" && game.computer.choice == "p" || game.person.choice == "p" && game.computer.choice == "r"   
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
game.display_winner(game)

