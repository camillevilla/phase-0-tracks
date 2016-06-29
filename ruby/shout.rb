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
