#Initiate global hash for grocery list
$grocery_list = {}

#DEFINE METHODS

# Method to print a list and make it look pretty
# input: hash
# steps: iterating through hash with .each
# output: list of grocery items and their quantity in a sting

def pretty_list
  print "\n"
	$grocery_list.each { |k, v| puts "#{k}: #{v}" }
  print "\n"
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: check to see if item is in the hash. if no, add to hash
# output: updated hash
#REMOVED add method to reduce redundacies. See update method instead.
=begin
def add(item, quantity = 1)
	$grocery_list[item.to_sym] = quantity
	puts "#{quantity} #{item} added"
	pretty_list
end
=end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create an empty hash
  # set default quantity
  # Add each of the keys (grocery items)
  # print the list to the console with .each to iterate through hash
  # use interpolation to make things readable
# output: hash

def create
  #tell user to add items and desired quantity
  puts "Please enter items you would like to add to your grocery list (e.g. Apples,2). Type 'done' when finished."

  #start a loop with user interface
  input = ''
  while input != "done"
    input = gets.chomp
    if input == "done"
      break
    else
      #split up string into item and quantity
      input = input.split(',')
      item = input[0]
      quantity = input[1]
      #feed item and quantity to add()
      update(item, quantity)
    end
  end
	puts "Thank you for creating a grocery list. Here is your list"
	$grocery_list.each { |k, v| puts "#{k}: #{v}" }
end

# Method to remove an item from the list
# input: item name
# steps: remove item if listed
# output: updated hash

def remove(item)
	$grocery_list.delete(item.to_sym)
	puts "#{item} has been removed! "
	puts "Here is your updated grocery list:"
	pretty_list
end

# Method to update the quantity of an item
# input: item name and quantity of item which would be required
# steps: change quantity
# output: updated hash

def update(item, quantity)
	$grocery_list[item.to_sym] = quantity
	puts "#{quantity} #{item} updated"
	pretty_list
end

#DRIVER CODE
create
update("lemonade", 2)
update("tomatoes", 3)
update("ice cream", 4)
remove("lemonade")
pretty_list
