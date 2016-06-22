#DRIVER CODE
  client = {}
  puts "Please enter client data:"
  #name
  puts "name: "
  client[:name] = gets.chomp

  #age
  puts "age: "
  client[:age] = gets.chomp.to_i

  #number of children
  puts "number of children: "
  client[:children] = gets.chomp.to_i

  #decor theme
  puts "decor theme: "
  client[:theme] = gets.chomp

#Loop: print form until user says "done"
  user_input = []
  until user_input == 'done'
    #Print out form
    puts %Q(
    name #{client[:name]}
    age: #{client[:age].to_s}
    children: #{client[:children].to_s}
    decor theme: #{client[:theme]}
    ===)

    #Ask user for corrections
    puts "\nIs the information below correct? Type 'done' to confirm. To update values, enter the key you would like to change (e.g. name)."

    #Updates values with user input
    user_input = gets.chomp

    #if done, end loop
    if user_input == "done"
      puts "===\nConfirmed! Final details are as follows:"

    #else, update value for given key
    else
      puts "Please enter new value:"
      client[user_input.to_sym] = gets.chomp
    end

#print final form
puts %Q(
name #{client[:name]}
age: #{client[:age].to_s}
children: #{client[:children].to_s}
decor theme: #{client[:theme]}
===)
end
