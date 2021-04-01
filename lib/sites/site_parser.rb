require 'nokogiri'
require 'open-uri'

# Base class for the sites we want to scrap
class SiteParser
  attr_reader :url, :selector

  def initialize(url, selector)
    @url = url
    @selector = selector
  end

  def sections
    if @jobs.nil?
      @jobs = []
      sections = fetch
      sections.each { |section| @jobs << parse(section) }
    end
    @jobs
  end

  def parse(html); end

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
