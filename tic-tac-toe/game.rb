require_relative "board"
require_relative "player"

@player = Player.new

def main_menu
  puts "~~~~~Welcome to Tic Tac Toe~~~~~"
  puts "Choose an option:"
  puts "1. New Game"
  puts "2. Quit"

  user_input = gets.chomp.to_i

  if user_input === 1
    run_game
  elsif user_input === 2
    exit
  else
    puts "invalid option"
    main_menu
  end
end

def check_win_state

end

def position_taken?(player_move)
  @board.position_free?(player_move)
end

def make_move
  @player.make_move
  if position_taken?(@player.player_move)
    @board.update_board(@player.player_move)
    @board.show_board
  else
    puts "This square is occupied, choose another."
    @player.make_move
  end
end

def run_game
  @board = Board.new
  @board.show_board
  make_move
  if @board.won?
    puts "game over"
  else
    "keep going"
  end
  make_move
  
  
end

main_menu