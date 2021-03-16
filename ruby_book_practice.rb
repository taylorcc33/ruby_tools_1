#!/usr/bin/env ruby

puts "Input an integer between 5 and 10:"

user_number = gets.to_i

def five_ten (num)
  case
  when (num >= 5 && num <= 10)
    puts "Number is within acceptable range."
  when (num < 5)
    puts "Number is below acceptable range."
  when (num > 10)
    puts "Number is above acceptable range."
  else
    puts ""
  end
end

five_ten(user_number)
