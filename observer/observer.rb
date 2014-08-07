require './ticker'
require './warn_high'
require './warn_low'

ticker = Ticker.new('MSFT')
WarnLow.new(ticker, 80)
WarnHigh.new(ticker, 120)
ticker.run