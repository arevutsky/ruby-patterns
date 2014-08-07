require 'forwardable'

class CoffeeDecorator
  extend Forwardable

  def initialize(component)
    @component = component
  end
end
