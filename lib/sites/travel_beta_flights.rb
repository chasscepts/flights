require_relative './site_parser'
require_relative '../flight'
require_relative '../flight_date'
require_relative '../time_utils'

class TravelBetaFlights < SiteParser
  URL = 'https://www.travelbeta.com/'.freeze

  SELECTOR = '#flightDealSlider .FirstBox'.freeze

  def initialize
    super(URL, SELECTOR)
  end

  def parse(doc)
    from_to = doc.at_css('.flight-head').text
    from_to = from_to.split ' to '
    price = doc.at_css('.flight-fee').text.delete('^0-9').to_i
    dates = doc.at_css('.details > p:nth-child(2)').text
    dates = dates.split(' - ').map { |d| to_date d }
    date = FlightDate.new(dates[0], dates[1])

    FlightDeal.new(from_to[0], from_to[1], price, date)
  end
end
