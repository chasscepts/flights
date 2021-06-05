require 'json'

shared_examples 'correctly parses flights' do
  it 'returns the correct number of flights on a page' do
    stub_request(:get, site.url)
      .to_return(status: 200, body: sample * 5)

    allow(site).to receive(:parse) { |doc| doc }

    expect(site.flights.length).to eq 5
  end

  it 'correctly parses a flight deal' do
    stub_request(:get, site.url)
      .to_return(status: 200, body: sample)

    expect(site.flights[0]).to be_same_flight flight
  end
end

RSpec::Matchers.define :be_same_flight do |expected|
  match do |actual|
    (actual.from == expected.from) &&
      (actual.to == expected.to) &&
      (actual.price == expected.price) &&
      (actual.date.to_s == expected.date.to_s)
  end
end
