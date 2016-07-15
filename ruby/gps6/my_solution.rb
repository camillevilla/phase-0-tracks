# Virus Predictor

# I worked on this challenge Brigette O'Shaughnessy.
# We spent 2 hours on this challenge.

require_relative 'state_data'
# EXPLANATION OF require_relative
#require_relative: links to ruby file in a relative path; allows program to reference the content of that file
#require: reference to Ruby modules, as well as for gems. i.e. rspec

class VirusPredictor
  #defines attributes for new instances of VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calling two methods below
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

private
  #calculates deaths based on population density thresholds and prints results


  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      scalor = 0.4
    elsif @population_density >= 150
      scalor = 0.3
    elsif @population_density >= 100
      scalor = 0.2
    elsif @population_density >= 50
      scalor = 0.1
    else
      scalor =  0.05
    end
    number_of_deaths = (@population * scalor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #calculates how quickly the virus will spread, based on population density thresholds and prints results
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

#Report on virus

#looping through STATE_DATA.
#Generate a new VirusPredictor instance for each state
STATE_DATA.each  do |state, value|
  new_state = VirusPredictor.new(state,value[:population_density],value[:population])
  new_state.virus_effects
end
  #create empty array
  #pass state, population density, population as an array?
  #create a new instance for each state,
  #e.g. state = VirusPredictor.new(reference to STATE_DATA)
  #call to VirusPredictor.virus_effects

#=======================================================================

# DRIVER CODE

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
In the first syntax used ("key" => value), the key is accessed as a string. In the second syntax used (key: value), the key sare saved as symbols.

What does require_relative do? How is it different from require?
See lines 7 to 9.

What are some ways to iterate through a hash?
- use the .each method and define a block either with a do statement or curly braces. Example:
hash.each do |key, value|
  puts stuff
end

hash.each {|key, value| puts stuff}

When refactoring virus_effects, what stood out to you about the variables, if anything?
I was surprised that we didn't have to supply instance variables to the methods. Being able to cut down on required parameters for each of the methods made it a lot easier to read the code.

What concept did you most solidify in this challenge?
Accessing values from a nested data structure!

=end
