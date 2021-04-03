class FlightDeal
  attr_reader :from, :to, :date, :time, :price

  def initialize(from, to, price, date, time = nil)
    @from = from
    @to = to
    @price = price
    @date = date
    @time = time
  end

  def today?
    @date.today?
  end

  def to_s
    @to_s ||=
      %(
        = = = = = = = = = = = = = = = = = = = = =
        =
        =  From   : #{from}
        =  To     : #{to}
        =  Price  : ₦#{price.to_s.reverse.gsub(/...(?=.)/, '\&,').reverse}:00
        =  Date   : #{date}
        =  Today? : #{date.today? ? 'Yes' : 'No'}
        =
        = = = = = = = = = = = = = = = = = = = = =
      )
  end
end
