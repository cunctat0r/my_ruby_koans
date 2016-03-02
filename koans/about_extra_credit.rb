# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.
class DiceSet
  def initialize
    @values = []
  end
  

  def roll(num_of_rolls)
    @values = []    
    num_of_rolls.times do
      @values << (1 + rand(6))
    end
    @values
  end

  def values
    @values
  end

end

def score(dice)
   
  score = 0

  rolls = dice.inject(Hash.new(0))  do |result, value|
    result[value] += 1
    result
  end

  rolls.each do |key, value|
    multipliers = value.divmod(3)    
    
    if key == 1
      three_value = 1000
      single_value = 100
    elsif key == 5
      three_value = 500
      single_value = 50
    else
      three_value = 100 * key
      single_value = 0
    end
    score += (three_value * multipliers[0] + single_value * multipliers[1])     
        
  end  

  score

end

class Player
	def initialize
	end
end

class Game
	def initialize
	end
end