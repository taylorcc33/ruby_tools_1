require_relative "board"

@board = Board.new

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

def start_game
  @board.generate_board

end

main_menu