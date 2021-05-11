@contact_list = [
  {
    name: "Taylor",
    address: "Holladay" 
  },
  {
    name: "James",
    address: "Salt Lake City"
  }
]

def main_menu
  puts "Choose an option:
    1. View all contacts 
    2. Add a contact 
    3. Exit
  "

  user_input = gets.chomp.to_i

  if user_input == 1
    view_contacts
  elsif user_input == 2
    add_contact
  elsif user_input == 3
    exit
  else
    puts "Ivalid choice, choose again"
    main_menu
  end

end

def view_contacts
  puts "Contact List"
  puts ""

  @contact_list.each do |i|
    puts "Name: #{i[:name]}"
    puts "Address: #{i[:address]}"
    puts ""
  end

  main_menu
end

def add_contact
  new_contact = 
    {
      name: "",
      address: ""
    }

  puts "Add Contact
    Enter Contact Name: 

  "
  name_input = gets.chomp
  new_contact[:name] = name_input
  puts ""
  puts "Enter Contact Address:
  
  "
  address_input = gets.chomp
  new_contact[:address] = address_input
  puts ""

  @contact_list.push(new_contact)

  puts "New Contact added!

    #{new_contact[:name]}
    #{new_contact[:address]}
  "
  puts ""



  main_menu
end

main_menu