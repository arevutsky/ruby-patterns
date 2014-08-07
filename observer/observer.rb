require './ticker'
require './warn_high'
require './warn_low'

ticker = Ticker.new('MSFT')
WarnLow.new(ticker, 80)     # observer 1
WarnLow.new(ticker, 20)     # observer 2
WarnHigh.new(ticker, 120)   # observer 3
ticker.run