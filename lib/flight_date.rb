class FlightDate
  attr_reader :from, :to

  def initialize(from, to = nil)
    @from = from.class == Time ? Date.new(from.year, from.month, from.day) : from
    if to.nil?
      @to = nil
    else
      @to = to.class == Time ? Date.new(to.year, to.month, to.day) : to
    end
  end

  def today?
    if @today.nil?
      now = Time.now.to_date
      @today = (now <=> @from) >= 0

      @today = (now <=> @to) <= 0 if @today && !@to.nil?
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