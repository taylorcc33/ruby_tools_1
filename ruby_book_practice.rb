puts "Input an integer"

user_number = gets.to_i

def even_odd (num)
  if num % 2 === 0
    puts "Your number is even"
  elsif num % 2 === 1
    puts "Your number is odd"
  end
end

even_odd(user_number)
