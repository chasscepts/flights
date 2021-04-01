require_relative './site_parser'

class KongaFlights < SiteParser
  URL = 'https://travel.konga.com/index.php'.freeze

  SELECTOR = '#deal2 .flight-wrap form'.freeze

  def initialize
    super(URL, SELECTOR)
  end
end