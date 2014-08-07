class Latte
  def initialize(component)
    @component = component
  end

  def cost
    @component.cost * 1.2
  end

  def ingredients
    @component.ingredients << 'milk' << 'whipped cream' << 'vanilla'
  end
end
