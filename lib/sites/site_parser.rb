require 'nokogiri'
require 'open-uri'

# Base class for the sites we want to scrap
class SiteParser
  attr_reader :url, :selector

  def initialize(url, selector)
    @url = url
    @selector = selector
  end

  def flights
    if @flights.nil?
      @flights = []
      sections = fetch
      sections.each { |section| @flights << parse(section) }
    end
    @flights
  end

  def filter_by_origin(city)
    return if @flights.nil?
    @flights = @flights.select { |flight| flight.from == city }
  end

  def filter_by_destination(city)
    return if @flights.nil?
    @flights = @flights.select { |flight| flight.to == city }
  end

  def reload
    @flights = nil
    flights
  end

  private

  def fetch
    return [] if @url.nil?

    begin
      doc = Nokogiri::HTML(URI.open(@url))
      return doc.css(@selector)
    rescue OpenURI::HTTPError => err
      return []
    end
    []
  end

  def parse(doc)
    doc.content
  end

  def to_date(string)
    begin
      date = Date.parse(string)
    rescue ArgumentError
      date = Time.now.to_date
    end
    date
  end

end
