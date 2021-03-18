class Dice

  attr_reader :value

  def initialize
    roll
  end

  def roll
    @value = get_a_random_num
  end

private
  
  def get_a_random_num
    rand(6) + 1
  end

end