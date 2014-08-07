require 'forwardable'

class Coffee
  def cost
    1
  end

  def ingredients
    %w(coffee water sugar)
  end
end

class CoffeeDecorator
  extend Forwardable

  def initialize(component)
    @component = component
  end
end

class DoubleCoffee < CoffeeDecorator
  def_delegator :@component, :ingredients

  def cost
    @component.cost * 2
  end
end

class Latte < CoffeeDecorator
  def cost
    @component.cost * 1.2
  end

  def ingredients
    @component.ingredients + ['milk', 'whipped cream', 'vanilla']
  end
end

coffee = Coffee.new

latte_coffee = Latte.new(coffee)
p latte_coffee.ingredients
p latte_coffee.cost

double_coffee = DoubleCoffee.new(coffee)
p double_coffee.ingredients
p double_coffee.cost

double_latte = DoubleCoffee.new(latte_coffee)
p double_latte.ingredients
p double_latte.cost
