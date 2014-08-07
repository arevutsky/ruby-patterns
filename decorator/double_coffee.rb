require 'forwardable'

class DoubleCoffee < CoffeeDecorator
  def_delegator :@component, :ingredients

  def cost
    @component.cost * 2
  end
end
