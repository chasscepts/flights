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
    unless @text
      @text = '= = = = = = = = = = = = = = = = = = = = =',
              '=                                        ',
              "=  From   : #{from}",
              "=  To     : #{to}",
              "=  Price  : #{price}",
              "=  Date   : #{date}",
              "=  Today? : #{date.today? ? 'Yes' : 'No' }",
              '=                                          ',
              '= = = = = = = = = = = = = = = = = = = = ='
    end
    @text
  end
end
