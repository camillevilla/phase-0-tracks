class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {|x| puts "Woof!"}
  end

  def rollover
    puts "Roll over!"
  end

  def dog_years(int)
    human_years = int * 7
    p human_years
  end

  def shake_paw
    p "Shakes paw."
  end

  def initialize
  p "Initializing new puppy instance..."
end

end


fido = Puppy.new
fido.fetch('stick')
fido.speak(3)
fido.rollover
fido.dog_years(3)
fido.shake_paw
