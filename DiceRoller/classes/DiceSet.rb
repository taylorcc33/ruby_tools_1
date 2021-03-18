# DiceSet instance contains 2 Dice instances
# DiceSet roll should roll both dice
# rand(6) returns a random number from 0 to 5
# DiceSet display should display the values of both dice

require_relative "Dice.rb"

class DiceSet 

  @dice1 = Dice.new
  @dice2 = Dice.new

  def play
    sum1 = @dice1.roll
    sum2 = @dice2.roll

    total_sum = sum1 + sum2
  end
end