require_relative '../lib/sites/konga_flights'
require_relative './support/shared_examples/sites'
require_relative '../lib/flight'
require_relative './sites_sample_html'

describe KongaFlights do
  context 'parse' do
    let(:site) { KongaFlights.new }
    let(:sample) { SampleHtml::KONGA }
    let(:flight) { FlightDeal.new('Lagos', 'Abuja', 24_245, '12-02-2021') }

    include_examples 'correctly parses flights'
  end
end
