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

class Cats
  def initialize
    p "Initializing new cat instance..."
  end

  def meow(int)
    int.times {|x| puts "Meow!"}
  end

  def sleep
    p "Zzzzzz."
  end
end

marcie = Cats.new
marcie.meow(3)
marcie.sleep

fido = Puppy.new
fido.fetch('stick')
fido.speak(3)
fido.rollover
fido.dog_years(3)
fido.shake_paw

counter = 0
cat_array = []

until counter == 50
  cat_array << Cats.new
  counter += 1
end

cat_array.each {|x| x.sleep}
cat_array.each {|x| x.meow(3)}
