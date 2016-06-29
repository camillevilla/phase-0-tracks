class Dragon
  attr_reader :element
  attr_accessor :horde, :age

  def initialize(age,horde)
    @age = age
    #horde: number of gold pieces
    @horde = horde
    @element = 'fire'
  end

  #behaviors
    #rawr(int) - print "RAWR" specified number of times
    def rawr(x)
      x.times {|x| p "RAWR!"}
    end

    #add gold pieces to horde if argument is supplied; otherwise
    def change_horde(x)
      if x.is_a? Integer
        @horde += x
        puts "There are now #{@horde} pieces of gold in the horde."
      else
        print "Please enter a positive or negative number to add to or subtract from the horde."
      end
    end

    #burninate: set given string on fire
    def burninate(item)
      puts "Burninating the #{item.to_s}!"
    end
end

#DRIVER CODE
=begin
drogon = Dragon.new(400,300)
drogon.rawr(3)
drogon.horde
drogon.change_horde(300)
drogon.change_horde(-250)
drogon.burninate("peasants")
=end

#USER INTERFACE
puts "Let's make some dragons!"

puts "How many dragons would you like to create?"
#Loop for creating multiple dragons
stop = gets.chomp.to_i
counter = 0
dragons = []
while counter < stop
  puts "How old is the dragon?"
  age = gets.chomp.to_i
  puts "How many gold pieces are in the dragon's horde?"
  horde = gets.chomp.to_i
  dragons << Dragon.new(age, horde)
  puts "Dragon created! Next one:"
  counter += 1
end

#Print out dragons created
puts "Dragons created:"
counter = 0
while counter < dragons.length
  puts "Dragon #{counter +1}: #{dragons[counter].element}, #{dragons[counter].age} years old, #{dragons[counter].horde} pieces"
  counter += 1
end
