require_relative './site_parser'
require_relative '../flight'
require_relative '../time_utils'

class WakanowFlights < SiteParser
  URL = 'https://www.wakanow.com/en-ng/flight'.freeze

  SELECTOR = ''.freeze

  def initialize
    super(URL, SELECTOR)
  end

  def parse(doc)

  end
end
