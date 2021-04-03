require_relative './sites/konga_flights'
require_relative './sites/wakanow_flights'

class FlightDeals
  def self.sites
    [KongaFlights.new, WakanowFlights.new]
  end
end