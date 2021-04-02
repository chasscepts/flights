module TimeUtils
  def self.today
    time = Time.now
    "#{time.day}-#{time.month}-#{time.year}"
  end

  def self.from_string(string)
    begin
      date = Date.parse(string)
    rescue ArgumentError
      date = nil
    end

    return '0-0-0000' if date.nil?

    "#{date.mday}-#{date.mon}-#{date.year}"
  end

  def to_nigerian_date_string(date)
    cls = date.class
    return "#{date.day}/#{date.month}/#{date.year}" if cls == Time
    return "#{date.mday}/#{date.mon}/#{date.year}" if cls == Date

    ''
  end
end
