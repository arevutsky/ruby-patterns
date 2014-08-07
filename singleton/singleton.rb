require 'singleton'

class Klass
  include Singleton
end

a, b  = Klass.instance, Klass.instance

p a == b
p a === b

c = Klass.new # it's not possible
p c