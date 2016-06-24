#method that takes a spy's real name and creates a fake name
def secret_name()
  #Ask for name
  puts "First name: "
  first_name = gets.chomp
  puts "Last name: "
  last_name = gets.chomp

  #Swap first and last name
  new_name = last_name + " " + first_name
  new_name = new_name.chars

  #set up vowel and consonant arrays
  vowels = 'aeiou'
  vowels = vowels + vowels.upcase
  vowels = vowels.chars
  consonants = 'bcdfghjklmnpqrstvwxyz'
  consonants = consonants + consonants.upcase
  consonants = consonants.chars
  counter = 0

  #Loop through each letter
  while counter < new_name.length
    letter = new_name[counter]

  #Change all vowels to the next vowel in 'aeiou'
    if vowels.include?(letter)
      new_name[counter] = vowels[vowels.find_index(letter) + 1]

  #Change all consonants to the next consonant
    elsif consonants.include?(letter)
      new_name[counter] = consonants[consonants.find_index(letter) + 1]
    end
  counter += 1
  end

  new_name = new_name.join
  p new_name
end

#User prompt
puts "Welcome to the secret name generator! Press Enter to proceed. Type 'quit' to exit the program."
secret_name
input = gets.chomp
while input != "quit"
  input = gets.chomp
  secret_name()
  puts "Press Enter to generate a new name. Type 'quit' to exit."
end
