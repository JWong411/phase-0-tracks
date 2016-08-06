# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# require_relative pulls in a file relative to the file you're in. 
# in this case, the other file is in the same directory, but it doesn't have to be.
# rule of thumb: require_relative is code you wrote, require is code others did.
require_relative 'state_data'

class VirusPredictor

  # This is the initialization method. It declares the instance variables within for every time the class is called.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Allows user to call both methods with just one line rather than two.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # all methods that follow will be made private: not accessible for outside objects

  # Takes the population density and population data from State_Data and stores the predicted number of deaths
  # based on those numbers in the number_of_deaths variable. Then prints the results.
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    density = [200, 150, 100, 50, 0]
    multiplier = [0.4, 0.3, 0.2, 0.1, 0.05]
    density.length.times do |x|
      @population_density >= density[x]
      @number_of_deaths = (@population * multiplier[x]).floor    
    end
#    if @population_density >= 200
#      number_of_deaths = (@population * 0.4).floor
#    elsif @population_density >= 150
#      number_of_deaths = (@population * 0.3).floor
#    elsif @population_density >= 100
#      number_of_deaths = (@population * 0.2).floor
#    elsif @population_density >= 50
#      number_of_deaths = (@population * 0.1).floor
#    else
#      number_of_deaths = (@population * 0.05).floor
#    end

    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"

  end

  # Takes the population density data from State_Data and calculates how long it takes for the virus
  # to spread across the state (in months)
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.5
    density = 200
    until @population_density >= density
      speed += 0.5
      density -= 50
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

  #  if @population_density >= 200
  #    speed += 0.5
  #  elsif @population_density >= 150
  #    speed += 1
  #  elsif @population_density >= 100
  #    speed += 1.5
  #  elsif @population_density >= 50
  #    speed += 2
  #  else
  #    speed += 2.5
  #  end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |x, y|
  x = VirusPredictor.new(x, y[:population_density], y[:population])
  x.virus_effects
end

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section