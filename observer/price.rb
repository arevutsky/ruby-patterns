class Price           ### A mock class to fetch a stock price (60 - 140).
  def self.fetch
    60 + rand(80)
  end
end