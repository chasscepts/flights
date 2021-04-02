require_relative '../lib/sites/konga_flights'
require_relative '../lib/flight'
require_relative './sites_sample_html'

describe KongaFlights do
  context 'parse' do
    let(:site) { KongaFlights.new }

    it 'returns the correct number of flights on a page' do
      stub_request(:get, site.url)
        .to_return(status: 200, body: SampleHtml::KONGA * 5)

      # rubocop:disable Style/SymbolProc
      allow(site).to receive(:parse) { |doc| doc }
      # rubocop:enable Style/SymbolProc

      expect(site.flights().length).to eq 5
    end

    it 'correctly parses a flight deal' do

      stub_request(:get, site.url)
        .to_return(status: 200, body: SampleHtml::KONGA)

      expect(site.flights[0]).to have_attributes(:from => 'Lagos', :to => 'Abuja', :price => 24245, :date => '12-02-2021')
    end
  end
end