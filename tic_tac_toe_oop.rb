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
  attr_accessor :board

  def draw_board
      system "clear"
      puts "#{board[1]}  |  #{board[2]}  |  #{board[3]} "
      puts " -------------- "
      puts "#{board[4]}  |  #{board[5]}  |  #{board[6]} "
      puts " -------------- "
      puts "#{board[7]}  |  #{board[8]}  |  #{board[9]} "
  end

  # Creates board has called from object.b
  def initialize
    @board = {}
    (1..9).each{ |position| @board[position] = " "}
    @board
    draw_board
  end

  def empty_positions
    @board.select {|k, v| v == " "}.keys
  end 

  def check_winner(board)
    winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    winning_lines.each do |line|
      return "Player" if board.values_at(*line).count('X') == 3
      return "Computer" if board.values_at(*line).count('O') == 3
    end
    nil
  end

  def nine_positions_are_filled?
    !@b.has_value?(" ")
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

    board.board[position] = "X"
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
  
  def new_game(game)
    board_obj = Board.new
    player = Player.new
    computer = Computer.new
    winner = ""
    keep_playing = ""
      loop do
        player.pick_square(board_obj)
                board_obj.draw_board

        winner = board_obj.check_winner(board_obj)
        if winner || board.nine_positions_are_filled?
          break
        end

        computer.pick_square(board)
        board.draw_board

        winner = board.check_winner(board)
        if winner || board.nine_positions_are_filled?
          break
        end
      end

      if winner
        puts "#{winner} is the winner!" 
      else 
        puts "It's a tie"
      end

      loop do
        puts "Do you want to play again? (Y/N)"
        input = gets.chomp.downcase
        if input == "y" || input == "n"
          keep_playing = input
          break
        end
      end

      if keep_playing == "y"
        game.new_game(game)
      else
        puts "Thanks for playing!"
        exit
      end

  end
end

game = Game.new
game.new_game(game)
