require './coffee_routine'

class CompositeTasks < CoffeeRoutine
  attr_reader :task, :steps

  def initialize(task)
    @steps = []
  end

  def add_step(step)
    steps << step
  end

  def remove_step(step)
    steps.delete step
  end

  def time_required
    steps.inject(0.0) { |result, step| result + step.time }
  end

  def process
    @steps.map { |x| "#{x.task}(#{x.time}m)" }.join(' -> ')
  end
end