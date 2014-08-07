class Coffee
  def cost
    1
  end

  def ingredients
    %w(coffee water sugar)
  end
end

module DoubleCoffee
  def cost
    super * 2
  end
end

module Latte
  def cost
    super * 1.2
  end

  def ingredients
    super + ['milk', 'whipped cream', 'vanilla']
  end
end

class CoffeeFactory
  def self.double_coffee_with_latte
    return Coffee.new.extend(DoubleCoffee).extend(Latte)
  end
end


order = CoffeeFactory.double_coffee_with_latte
p order.ingredients
p order.cost
