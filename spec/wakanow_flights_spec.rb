require_relative '../lib/sites/wakanow_flights'
require_relative './support/shared_examples/sites'
require_relative '../lib/flight'
require_relative './sites_sample_html'

describe WakanowFlights do
  context 'parse' do
    let(:site) { WakanowFlights.new }
    let(:sample) { SampleHtml::WAKANOW }
    let(:flight) { FlightDeal.new('Lagos', 'London', 273_835, FlightDate.new(Date.parse('Apr 15, 2021'), Date.parse('May 10, 2021'))) }

    include_examples 'correctly parses flights'
  end
end
