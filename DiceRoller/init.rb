#!/usr/bin/env ruby

require_relative 'classes/Dice'
require_relative 'classes/DiceSet'

puts "-" * 26
puts "Welcome to the Dice Roller"
puts "-" * 26
puts

dice_set = DiceSet.new
puts dice_set.display

response = nil
until response == 'q'
  puts "\nType 'r' to roll again, 'q' to quit"
  print '> '
  response = gets.chomp

  if response == 'r'
    dice_set.roll
    puts "\n" + dice_set.display
  end
  
end
