require_relative "board"
require_relative "player"

@board = Board.new
@player = Player.new

def main_menu
  puts "~~~~~Welcom to Tic Tac Toe~~~~~"
  puts "Choose an option:"
  puts "1. New Game"
  puts "2. Quit"

  user_input = gets.chomp.to_i

  if user_input === 1
    start_game
  elsif user_input === 2
    exit
  else
    puts "invalid option"
    main_menu
  end
end

def check_win_state

end

def position_taken(board_index)
  if (board_index == " ")
    return false
  else
    return true
  end
end


def game_loop

end

def start_game
  @board.show_board
  @player.make_move
  @board.update_board(@player.player_move)
  @board.show_board
end

main_menu