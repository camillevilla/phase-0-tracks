class Santa
  def speak
    "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def initialize
    puts "Initializing Santa instance..."
  end
end

st_nick = Santa.new
st_nick.speak
st_nick.eat_milk_and_cookies("chocolate chip")
