class DoubleCoffee
  def initialize(component)
    @component = component
  end

  def cost
    @component.cost * 2
  end

  def ingredients
    @component.ingredients
  end
end
