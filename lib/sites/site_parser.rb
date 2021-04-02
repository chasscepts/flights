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

  def parse(doc)
    doc.content
  end

  private

  def fetch
    return [] if @url.nil?

    begin
      doc = Nokogiri::HTML(URI.open(@url))
      return doc.css(@selector)
    rescue OpenURI::HTTPError
      return []
    end
    []
  end
end
