class FlightDeal
  attr_reader :from, :to, :date, :time, :price

  def initialize(from, to, price, date, time = nil)
    @from = from
    @to = to
    @price = price
    @date = date
    @time = time
  end
end
