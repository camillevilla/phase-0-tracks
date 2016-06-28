class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def state
    puts "I am #{@gender} #{@ethnicity}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.push(@reindeer_ranking.first)
    @reindeer_ranking.shift
    p @reindeer_ranking
  end

  #setter method
  def gender=(new_gender)
    @gender = new_gender
  end

  #getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end
end

santas = []
example_genders = ["two-spirit", "female", "trans female", "trans male", "cis male"]
example_ethnicities = ["Czech", "Chinese", "Japanese", "Mexican", "Pakistani"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |x|
  x.state
end

poppy = Santa.new("female", "chinese")
poppy.get_mad_at("Vixen")
p poppy
poppy.gender="male"
poppy.celebrate_birthday
p poppy
p poppy.age
p poppy.ethnicity
