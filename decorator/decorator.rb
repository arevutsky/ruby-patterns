require './coffee'
require './latte'
require './double_coffee'

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


