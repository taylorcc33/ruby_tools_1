###### Data Sets ######
@inventory = [
  { id: 1, name: "Surfboard", price: 200 },
  { id: 2, name: "Macbook Pro", price: 2000 },
  { id: 3, name: "Gameboy", price: 150 }
]

@shopping_cart = []

###### Main Menu/App function ######
def main_menu
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "|       Lame-azon.com      |"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"

  puts "Choose an option below:
          
          1. Go Shopping
          2. View Cart
          3. Exit
  "
  user_input = gets.chomp.to_i

  if user_input == 1
    shopping_menu
  elsif user_input == 2
    cart_menu
  elsif user_input == 3
    exit
  end
end

##### Other functions ######
def shopping_menu
  puts ""
  puts "Shopping Menu"
  puts "------------------------"
  puts "Choose from below:
  
          1. View available products
          2. View cart
          3. Return to Main Menu
  "
  puts ""
  user_input = gets.chomp.to_i

  if user_input == 1
    item_selection_menu
  elsif user_input == 2
    cart_menu
  elsif user_input == 3
    main_menu
  end

end

def item_selection_menu
  puts ""
  puts "Select an item below to purchase:"
  puts ""

  # Displaying all products in the inventory
  @inventory.each_with_index do |v,i|
    puts "#{i + 1}. #{v[:name]} - $#{v[:price]}"
  end

  user_input_choice = gets.chomp.to_i
  puts ""
  puts "Type number of items to add to cart:"
  puts ""
  user_input_number = gets.chomp.to_i

  # Checks user input choice with each product in inventory. If there's a match, it adds that product to the shopping cart
  @inventory.each_with_index do |v,i|
    if user_input_choice == (i + 1)
      user_input_number.times do 
        @shopping_cart.push(v)
      end
    end
  end

  shopping_menu

end

def cart_menu
  cart_total = 0

  puts ""
  puts "Your Shopping Cart"
  puts "--------------------"
  puts "Current Items in Cart:"
  puts ""

  @shopping_cart.each_with_index do |v,i|
    puts "#{i + 1}. #{v[:name]} - $#{v[:price]}"
    cart_total += v[:price]
  end

  puts "----------------"
  puts "Cart Total: $#{cart_total}"
  puts ""
  puts "Do you want to remove an item? y/n"
  puts ""
  user_input_remove = gets.chomp

  user_input_remove == "y" ? remove_item_from_cart : return_to_main_menu(:cart_menu)
 
end

def remove_item_from_cart
  puts "Type item number you want to remove:"
  user_input = gets.chomp.to_i

  @shopping_cart = @shopping_cart.select.with_index do |v,i|
    (i + 1) != user_input
  end

  cart_menu
end

def return_to_main_menu(current_menu)
  puts ""
  puts "Return to Main Menu? y/n"
  puts""

  user_input = gets.chomp

  if user_input == "y"
    main_menu
  else
    method(current_menu).call
  end
end

main_menu