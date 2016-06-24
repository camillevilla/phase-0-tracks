#Program that takes a spy's real name and creates a fake name
$aliases = {}

#method for shifting vowels and consonants
def letter_swap(phrase)
  #set up vowel and consonant arrays
  vowels = 'aeiou'.chars
  consonants = 'bcdfghjklmnpqrstvwxyz'.chars
  counter = 0

  #convert string to array
  phrase = phrase.downcase.chars

  #Loop through each letter
  while counter < phrase.length
    letter = phrase[counter]

  #Deal with special cases 'z' and 'u'
    if letter == 'z'
      phrase[counter] = 'b'
    elsif letter == 'u'
      phrase[counter] = 'a'

  #Change all vowels to the next vowel in 'aeiou'
    elsif vowels.include?(letter)
      phrase[counter] = vowels[vowels.find_index(letter) + 1]

  #Change all consonants to the next consonant
    elsif consonants.include?(letter)
      phrase[counter] = consonants[consonants.find_index(letter) + 1]
    end
  counter += 1
  end

  #rejoin strings
  phrase.join

end

def secret_name()
  #Ask for name
  puts "First name: "
  first_name = gets.chomp
  puts "Last name: "
  last_name = gets.chomp
  original_name = first_name + ' ' + last_name

  #run letterswap on both names
  first_name = letter_swap(first_name.downcase)
  last_name = letter_swap(last_name.downcase)
  #Swap first and last name
  new_name = last_name.capitalize + " " + first_name.capitalize

  $aliases[original_name.to_sym] = new_name
  puts "\nYour new name is #{new_name}."
end

#User prompt loop
puts "Welcome to the secret name generator! Press Enter to proceed. Type 'quit' to exit the program."
input = ''

while input != "quit"
  secret_name
  puts "Press Enter to generate a new name. Type 'quit' to exit."
  input = gets.chomp
end

#Print out all aliases
puts "\nFinal report:"
$aliases.each {|key, value| puts "#{key} is also known as #{value}"}
