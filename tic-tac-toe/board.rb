class Board

  attr_accessor :board

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def show_board
    puts ""
    puts "[#{@board[0]}][#{@board[1]}][#{@board[2]}]"
    puts "[#{@board[3]}][#{@board[4]}][#{@board[5]}]"
    puts "[#{@board[6]}][#{@board[7]}][#{@board[8]}]"
    puts ""
  end

  def update_board(player_move)
    @board[player_move] = "x"
  end

  def position_free?(player_move)
    if (@board[player_move] == " ")
      return true
    else
      return false
    end
  end

  def check_win
    WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [6,4,2]
    ]
  end
  
# Created the method below for fun to generate random x's on the gameboard
#
# def random_xs(board)
#   num_times = rand(10)

#   num_times.times do
#     rand_cell = rand(10)
#     board[rand_cell] = "x"
#   end
#   puts "[#{board[0]}][#{board[1]}][#{board[2]}]"
#   puts "[#{board[3]}][#{board[4]}][#{board[5]}]"
#   puts "[#{board[6]}][#{board[7]}][#{board[8]}]"
# end

end