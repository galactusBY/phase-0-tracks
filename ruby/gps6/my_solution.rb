# Virus Predictor

# I worked on this challenge by myself.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Links the code of one file on top of the code of another file.
#Require_relative will only look in the local file, while relative will search the ruby directory.
require_relative 'state_data'

class VirusPredictor
  #Taking the keys of each hash as an argument from the "special" method of the class called the initialize method, and assigning them to an instance variable.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Calling on the two private methods within the class and feeding them the newly assigned instance variables.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #Predicting the number of deaths for each state based on a conditional block that uses population_density as the determining qualification for the formula being applied.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #Estimating the speed of how fast the virus will spread in each state using a conditional block that uses population_density as the determining qualification for the value of the variable "speed".
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name, state_hash|
  state = VirusPredictor.new(state_name, state_hash[:population_density], state_hash[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section