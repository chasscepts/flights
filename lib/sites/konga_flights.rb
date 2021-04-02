require_relative './site_parser'
require_relative '../flight'
require_relative '../flight_date'
require_relative '../time_utils'

class KongaFlights < SiteParser
  URL = 'https://travel.konga.com/index.php'.freeze

  SELECTOR = '#deal2 .flight-wrap form'.freeze

  def initialize
    super(URL, SELECTOR)
  end

  def parse(doc)
    from_to = doc.at_css('.desplname > div:first-child > div:first-child > h5').content
    from_to = from_to.split('-')
    price = doc.at_css('.desplname > div:first-child > div:nth-child(2) > h5').content
    price = price.delete('^0-9').to_i
    date = doc.at_css('input[name="depature_tf"]')[:value]

    begin
      date = FlightDate.new(Date.parse(date, '%d-%m-%y'))
    rescue ArgumentError
      date = Time.now.to_date
    end

    FlightDeal.new(from_to[0], from_to[1], price, date)
  end
end
