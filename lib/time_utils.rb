module TimeUtils
  def today
    time = Time.now
    "#{time.day}-#{time.month}-#{time.year}"
  end
end
