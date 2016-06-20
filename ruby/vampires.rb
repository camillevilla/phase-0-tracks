puts "How many employees will you be processing?"
employees = gets.chomp.to_i
counter = 0
currentYear = 2016

while counter < employees
  counter += 1

  puts "What is your name?"
  name = gets.chomp

  puts "How old will you be after your birthday this year?"
  # Weird phrasing to get around asking for current date
  age = gets.chomp.to_i

  puts "What year were you born?"
  birthYear = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlicBread = gets.chomp

  puts "Would you like to enroll in the company's health insurance? (y/n)"
  insurance = gets.chomp

  if name == 'Drake Cula' || name == 'Tu Fang'
    puts "Definitely a vampire"
  elsif (!(age == currentYear - birthYear) && garlicBread == 'n') && insurance == 'n'
    puts "Almost certainly a vampire"
  elsif !(age == currentYear - birthYear) && (garlicBread == 'n' || insurance == 'n')
    puts "Probably a vampire"
  elsif (age == currentYear - birthYear) && (garlicBread == 'y' || insurance == 'y')
    puts "Probably not a vampire"
  else
    puts "Results inconclusive"
  end

end
