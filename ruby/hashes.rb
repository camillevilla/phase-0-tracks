#DRIVER CODE
client = {}
puts "Please enter client data:"
#name
puts "Name: "
client[:name] = gets.chomp

#age
puts "Age: "
client[:age] = gets.chomp.to_i

#number of children
puts "Number of children: "
client[:children] = gets.chomp.to_i

#decor theme
puts "Decor theme: "
client[:theme] = gets.chomp

#Loop: print form until user says "done"
  #Print out form
  puts "\n\n"
  puts "Name: " + client[:name]
  puts "Age: " + client[:age].to_s
  puts "Number of children: " + client[:children].to_s
  puts "Decor theme: " + client[:theme]

  #update key

  #final print
