#!/usr/bin/env ruby

puts "Input an integer between 5 and 10:"

user_number = gets.to_i

def five_ten (num)
  if num >= 5 && num <= 10
    puts "Number is within range."
  else
    puts "Number is outside of range."
  end
end

five_ten(user_number)
