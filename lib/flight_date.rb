class FlightDate
  attr_reader :from, :to

  def initialize(from, to = nil)
    @from = from.class == Time ? Date.new(from.year, from.month, from.day) : from
    cls = to.class
    @to = cls == Time ? Date.new(to.year, to.month, to.day) : to
    @to = nil unless cls == Date
  end

  def today?
    if @today.nil?
      now = Date.today
      @today = @to.nil? ? (now <=> @from).zero? : ((now <=> @from) >= 0 && (now <=> @to) <= 0)
    end
    @today
  end

  def to_s
    if @text.nil?
      @text = @to.nil? ? date_string(@from) : "#{date_string(@from)} - #{date_string(@to)}"
    end
    @text
  end

  private

  def date_string(date)
    cls = date.class
    return "#{date.day}/#{date.month}/#{date.year}" if cls == Time
    return "#{date.mday}/#{date.mon}/#{date.year}" if cls == Date

    ''
  end
end
