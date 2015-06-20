class Game
  def self.choices
     choices = ['r', 'p', 's']
  end
 

  def start_game
    player = Person.new
    computer = Computer.new
    player.choice = " "
    until Game.choices.include?(player.choice)
      puts "Rock (r), Paper (p) or scissors (s) ?"
      player.choice = gets.chomp[0].downcase
    end
  end 
    

  def puts_check_winner(person, computer)
    puts "Player chose: #{person.choice}"
    puts "Computer chose: #{computer.choice}"
    if person.choice == computer.choice
      puts "It's a tie."
    elsif person.choice == "r" && computer.choice == "s" || person.choice == "s" && computer.choice == "p"
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

class Person <Player
  
end

class Computer <Player
end

game = Game.new
game.start_game
game.puts_check_winner(player, computer)

