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
    def horde(x='gold')
      if x == 'gold'
        print "There are #{@horde} pieces of gold in the horde."
      elsif x.is_a? Integer
        @horde += x
        puts "There are now #{@horde} pieces of gold in the horde."
      else
        print "Please call 'horde()' to print current horde. Otherwise, call horde(integer) to add or subtract pieces to the horde."
      end
    end

    #burninate: set given string on fire
    def burninate(item)
      puts "Burninating the #{item.to_s}!"
    end
end

#DRIVER CODE
drogon = Dragon.new(400,300)
drogon.rawr(3)
drogon.horde
drogon.horde(300)
drogon.horde(-250)
drogon.burninate("peasants")
