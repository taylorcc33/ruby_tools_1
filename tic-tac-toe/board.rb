class Board

  attr_accessor :board

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    @win = false
  end

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

  def won?
    WIN_COMBINATIONS.each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]

      position_1 = @board[win_index_1]
      position_2 = @board[win_index_2]
      position_3 = @board[win_index_3]

      position_1 == position_2 && position_2 == position_3
    end

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