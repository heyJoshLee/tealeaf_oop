require"pry"

# 1. Come up with the requirements/ specifications, which will determine the scope
# 2. Application logic; sequence of steps
# 3. Translation of those steps to code
# 4. Run code to verify logic
#
# draw a board

# Assign player to "x" 
# Assign computer to "O"
#
# loop until a winner or all swuares are taken
  # player1 picks an empty square
  # check for a winner
  # computer picks an empty square 
  # check for a winner
#
# if there's a winner
  #   show the winner
  # or else

class Board
  attr_accessor :b

  def draw_board
      system "clear"
      puts "#{b[1]}  |  #{b[2]}  |  #{b[3]} "
      puts " -------------- "
      puts "#{b[4]}  |  #{b[5]}  |  #{b[6]} "
      puts " -------------- "
      puts "#{b[7]}  |  #{b[8]}  |  #{b[9]} "
  end

  # Creates board has called from object.b
  def initialize
    @b = {}
    (1..9).each{ |position| @b[position] = " "}
    @b
    draw_board
  end

  def empty_positions
    @b.select {|k, v| v == " "}.keys
  end 

  def check_winner(board)
    winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    winning_lines.each do |line|
      return "Player" if b.values_at(*line).count('X') == 3
      return "Computer" if b.values_at(*line).count('O') == 3
    end
    nil
  end

  def nine_positions_are_filled?
    !@b.has_value?(" ")
  end

  def announce_winner()
    puts "#{check_winner} wins!"
  end 

end


class Player
  
  def pick_square(board)
    position = " "
    loop do
      puts "Pick a square (1-9)"
      position = gets.chomp.to_i

      if board.empty_positions.include?(position)
        position
        break
      end
    end 

    board.b[position] = "X"
  end

end


class Computer

  def pick_square(board)
    position = board.empty_positions.sample
    board.b[position] = "O"
  end

end


class Game
  attr_accessor :name, :current_player
  
  def new_game 
    board = Board.new
    player = Player.new
    computer = Computer.new
    winner = ""
      loop do
        player.pick_square(board)
        computer.pick_square(board)
        board.draw_board

        winner = board.check_winner(board)
        if winner || board.nine_positions_are_filled?
          break
        end
      end
      puts "#{winner} is the winner!"  
  end
end



game = Game.new
game.new_game
