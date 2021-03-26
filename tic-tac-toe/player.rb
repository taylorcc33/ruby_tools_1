class Player

  attr_reader :player_move

  def initialize

  end
  
  def get_player_input
    puts 'Choose a square (1-9) to place "x":'
    puts ""
    @player_input = gets.chomp.to_i

    if (@player_input -1).between?(0,8)
      @player_move = @player_input - 1
    else
      puts "Invalid entry."
      get_player_input
    end
  end

  def make_move
    get_player_input
  end

end