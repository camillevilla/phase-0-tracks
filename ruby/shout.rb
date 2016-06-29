#Release 3: convert standalone module to a mixin
module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(words)
    puts words.upcase + "de da! :)"
  end
end

class Deer
  include Shout
end

class Old
  include Shout
end

deer = Deer.new
deer.yell_angrily("Oorah!")
deer.yelling_happily("Grass")

old = Old.new
old.yell_angrily("Get off my lawn")
old.yelling_happily("prunes")


#Release 1 code
=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "de da! :)"
  end
end

p Shout.yell_angrily("ARGH")
p Shout.yelling_happily("la")
=end
