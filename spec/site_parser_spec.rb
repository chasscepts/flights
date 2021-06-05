require 'webmock/rspec'
require_relative '../lib/sites/site_parser'

describe SiteParser do
  let(:host) { 'http://www.example.com' }
  let(:parser) { SiteParser.new(url, 'p') }

  context 'flights' do
    describe 'when network call fails' do
      let(:url) { "#{host}/fail" }

      it 'returns empty array' do
        stub_request(:get, url)
          .to_return(status: 400, body: 'forbidden')

        expect(parser.flights).to eq([])
      end
    end

    describe 'when network call succeeds' do
      let(:url) { host }

      it 'returns the correct number of flights' do
        stub_request(:get, url)
          .to_return(status: 200, body: '<div><p>p1</p><p>p2</p><p>p3</p><span></span></div>')

        expect(parser.flights.size).to be 3
      end

      it 'returns accurate content for flights' do
        stub_request(:get, url)
          .to_return(status: 200, body: '<div><p>p1</p><p>p2</p><p>p3</p><span></span></div>')

        # rubocop:disable Style/SymbolProc
        allow(parser).to receive(:parse) { |doc| doc.content }
        # rubocop:enable Style/SymbolProc

        expect(parser.flights[0]).to eq 'p1'
      end
    end
  end
end
