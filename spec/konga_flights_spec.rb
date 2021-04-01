require_relative '../lib/sites/konga_flights'
require_relative '../lib/flight'
require_relative './sites_sample_html'

describe KongaFlights do
  context 'parse' do
    let(:site) { KongaFlights.new }
    let(:time) { Time.now }
    let(:date) { "#{time.day}-#{time.month}, #{time.year}" }

    it 'returns the correct number of flights on a page' do
      #let(:time) { Time.now }

      stub_request(:get, site.url)
        .to_return(status: 200, body: SampleHtml::KONGA_FLIGHTS)

      # rubocop:disable Style/SymbolProc
      allow(site).to receive(:parse) { |doc| doc }
      # rubocop:enable Style/SymbolProc

      expect(site.flights.length).to eq 5
    end

    it 'correctly parses a flight deal' do

      stub_request(:get, site.url)
        .to_return(status: 200, body: SampleHtml::KONGA)

      expected = FlightDeal.new('Lagos', 'Abuja', 24245, date)

      expect(site.flights[0]).to eq(expected)
    end
  end
end