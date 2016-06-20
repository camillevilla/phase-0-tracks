

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
  puts x
end

encrypt('abc')
encrypt('zed')
#puts decrypt("bcd")
#puts decrypt("afe")

#decrypt, i.e. bcd -> abc
#move password letters back one letter
#set up a loop
  # if space, leave it alone
  #else
  # look at the letter, get its index
    # if a, change to z
    # else change letter to alphabet[index - 1]
