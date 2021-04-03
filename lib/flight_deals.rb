require_relative './sites/konga_flights'
require_relative './sites/travel_beta_flights'

class FlightDeals
  def self.sites
    [KongaFlights.new, TravelBetaFlights.new]
  end
end