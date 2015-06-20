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

def draw_board()
    system "clear"
    puts "#{b[1]}  |  #{b[2]}  |  #{b[3]} "
    puts " -------------- "
    puts "#{b[4]}  |  #{b[5]}  |  #{b[6]} "
    puts " -------------- "
    puts "#{b[7]}  |  #{b[8]}  |  #{b[9]} "
  end

  def initialize
    @b = {}
    (1..9).each{ |position| @b[position] = " "}
    @b
  end

  def empty_positions(b)
    b.select {|k, v| v == " "}.keys
  end 

  def check_winner(b)
    winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    winning_lines.each do |line|
      return "Player" if b.values_at(*line).count('X') == 3
      return "Computer" if b.values_at(*line).count('O') == 3
    end
    nil
  end

  def nine_positions_are_filled?(board)
    empty_positions(board) == []
  end

  def announce_winner(winner)
    puts "#{winner} wins!"
  end 


end


class Player

# pick_square

end


class Computer
# pick_square

end




board = Board.new
board.draw_board