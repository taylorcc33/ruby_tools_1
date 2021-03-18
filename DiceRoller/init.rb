#!/usr/bin/env ruby

require_relative 'classes/DiceSet'

@dice_set = DiceSet.new

def app
  puts "Press 1 to roll dice"
  input = gets.to_i
  if input === 1
    @dice_set.play
  end
end

app

