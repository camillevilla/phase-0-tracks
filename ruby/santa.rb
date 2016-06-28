class Santa
    attr_reader :ethnicity
    attr_accessor :gender, :age

    def initialize(gender, ethnicity)
      puts "Initializing Santa instance..."
      @gender = gender
      @ethnicity = ethnicity
      @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
      @age = 0
    end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
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
end

#Generate some example Santas
santas = []
example_genders = ["two-spirit", "female", "trans female", "trans male", "cis male"]
example_ethnicities = ["Czech", "Chinese", "Japanese", "Mexican", "Pakistani"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |x|
  x.state
end

#DRIVER CODE
poppy = Santa.new("female", "chinese")
poppy.get_mad_at("Vixen")
p poppy
poppy.gender="male"
poppy.celebrate_birthday
p poppy
p poppy.age
p poppy.ethnicity

#Generate sample santas with random attributes
random_santas = []
15.times do |x|
  random_santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  random_santas[x].age=(0..140).to_a.sample
end

random_santas.each {|x| puts  "#{x.gender}, #{x.age}, #{x.ethnicity}" }
