require_relative "board"

@board = Board.new

def new_game
  @board.generate_board
end

new_game