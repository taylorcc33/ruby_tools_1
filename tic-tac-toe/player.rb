class Player

  attr_reader :player_move

  def initialize

  end

  def make_move
    puts 'Choose a square (1-9) to place "x":'
    puts ""
    player_input = gets.chomp.to_i
    @player_move = player_input - 1
    
  end
end