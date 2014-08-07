require 'observer'
require './price'

class Ticker          ### Periodically fetch a stock price.
  include Observable

  def run
    price = nil

    loop do
      current_price = Price.fetch
      print "Current price: #{current_price}\n"

      if current_price != price
        changed # notify observer
        price = current_price
        notify_observers(Time.now, current_price)
      end

      sleep 1
    end
  end
end