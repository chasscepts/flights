require_relative './site_parser'
require_relative '../flight'
require_relative '../flight_date'
require_relative '../time_utils'

class WakanowFlights < SiteParser
  URL = 'https://www.wakanow.com/en-ng/flight'.freeze

  SELECTOR = '.flight-deals .flight-deal-cards'.freeze

  def initialize
    super(URL, SELECTOR)
  end

  def parse(doc)
    para = doc.at_css('.flight-location-overlay .media-body > p:first-child')
    from_to = para.text.split(' ').map(&:strip)
    date_range = doc.at_css('.flight-location-overlay .media-body > p:nth-child(2)').text
    date_from_to = date_range.split(' - ').map { |d| to_date d }

    date = FlightDate.new(date_from_to[0], date_from_to[1])
    price = doc.at_css('.flight-paynow-overlay > .media:first-child > .media-body:first-child h5').content
    price = price.delete('^0-9').to_i

    FlightDeal.new(from_to[0], from_to[1], price, date)
  end

  private

  def to_date(string)
    begin
      date = Date.parse(string)
    rescue ArgumentError
      date = Time.now.to_date
    end
    date
  end
end
