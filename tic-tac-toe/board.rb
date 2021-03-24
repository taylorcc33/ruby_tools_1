class Board
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def generate_board
    puts "[#{@board[0]}][#{@board[1]}][#{@board[2]}]"
    puts "[#{@board[3]}][#{@board[4]}][#{@board[5]}]"
    puts "[#{@board[6]}][#{@board[7]}][#{@board[8]}]"
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