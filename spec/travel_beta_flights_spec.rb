require_relative '../lib/sites/travel_beta_flights'
require_relative './support/shared_examples/sites'
require_relative '../lib/flight'
require_relative './sites_sample_html'

describe TravelBetaFlights do
  context 'parse' do
    let(:site) { TravelBetaFlights.new }
    let(:sample) { SampleHtml::TRAVEL_BETA }
    let(:date) { FlightDate.new(Date.parse('Tue, 23 Feb. 2021'), Date.parse('Mon, 8 Mar. 2021')) }
    let(:flight) { FlightDeal.new('Lagos', 'Cape Town', 221_730, date) }

    include_examples 'correctly parses flights'
  end
end
