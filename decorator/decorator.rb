require './coffee'
require './latte'
require './double_coffee'

latte_coffee = Latte.new(Coffee.new)
p latte_coffee.ingredients
p latte_coffee.cost
