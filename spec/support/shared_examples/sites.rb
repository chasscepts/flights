
shared_examples 'correctly parses flights' do
  it 'returns the correct number of flights on a page' do
    stub_request(:get, site.url)
      .to_return(status: 200, body: sample * 5)

    # rubocop:disable Style/SymbolProc
    allow(site).to receive(:parse) { |doc| doc }
    # rubocop:enable Style/SymbolProc

    expect(site.flights().length).to eq 5
  end

  it 'correctly parses a flight deal' do

    stub_request(:get, site.url)
      .to_return(status: 200, body: sample)

    expect(site.flights[0]).to have_attributes(:from => flight.from, :to => flight.to, :price => flight.price, :date => flight.date)
  end
end
