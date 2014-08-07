require './coffee_decorator'

class Latte < CoffeeDecorator
  def cost
    @component.cost * 1.2
  end

  def ingredients
    @component.ingredients + ['milk', 'whipped cream', 'vanilla']
  end
end
