
# encrypt
#advance each string of a letter one space forward, i.e. abc -> bcd
# set up a loop
  # if space, leave it alone
  #else
    # look at the letter, get its index
      # if z, change to a
      # else change letter to alphabet[index + 1]

def encrypt(x)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  counter = 0
  while counter < x.length
    if x[counter] != ' '
      if x[counter] == 'z'
        x[counter] = 'a'
      else
        letterIndex = alphabet.index(x[counter])
        x[counter] = alphabet[letterIndex + 1]
      end
    end
    counter += 1
  end
  return x
end

#decrypt, i.e. bcd -> abc
#move password letters back one letter
#set up a loop
  # if space, leave it alone
  #else
  # look at the letter, get its index
    # if a, change to z
    # else change letter to alphabet[index - 1]

def decrypt(x)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  counter = 0
  while counter < x.length
    if x[counter] != ' '
      if x[counter] == 'a'
        x[counter] = 'z'
      else
        letterIndex = alphabet.index(x[counter])
        x[counter] = alphabet[letterIndex - 1]
      end
    end
    counter += 1
  end
  return x
end

#DRIVER CODE
#ask: decrypt or encrypt password?
puts "Would you like to encrypt or decrypt your password?"
response = gets.chomp

#ask for a password
puts "What is your password?"
password = gets.chomp

#run method, print result, exit
if response == "encrypt"
  puts encrypt(password)
elsif response == "decrypt"
  puts decrypt(password)
else
  puts "please enter a valid command"
end


#tests
#puts encrypt('abc')
#puts encrypt('zed')
#puts decrypt("bcd")
#puts decrypt("afe")
#puts decrypt(encrypt("swordfish"))
#The encrypt and decrypt methods are two sides of the same coin. encrypt("swordfish") returns "txpsegjti". This result is then read by decrypt.
#The nested method call is equivalent to decrypt("txpsegjti").
