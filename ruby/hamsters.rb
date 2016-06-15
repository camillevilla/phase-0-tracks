
#Ask user
puts "We'll need some information about your hamster."
#hamster name
puts "What's its name?"
name = gets.chomp
#volume level [1 - 10]
puts "On a scale from 1 to 10, how loud is #{name}?"
volume = gets.chomp.to_i
#fur color
puts "What color is #{name}'s fur?"
color = gets.chomp
#good candidate for adoption? (y/n)
puts "Is #{name} a good candidate for adoption? (y/n)"
candidate = gets.chomp
#estimated age [int] <-- if blank, set to nil
puts "How old is #{name}? Leave this blank if you're unsure"
input = gets.chomp
if input == ''
  age = nil
else
    age = input.to_i
end

#give information to front desk

puts "Great! We will give #{name}'s information to the front desk. You provided the following information:"
puts "Name: #{name}"
puts "Volume: #{volume}"
puts "Fur color: #{color}"
puts "Candidate for adoption: #{candidate}"
puts "Estimated age: #{age} \n\nThank you for the information"
