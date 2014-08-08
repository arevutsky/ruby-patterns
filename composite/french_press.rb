require './composite_tasks'

class FrenchPress < CompositeTasks
  def initialize
    super 'Using the FrenchPress to make coffee!!!'
    add_step GrindCoffee.new
    add_step BoilWater.new
    add_step GrindCoffee.new
    add_step BoilWater.new
    add_step AddCoffee.new
  end
end