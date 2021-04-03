require_relative '../lib/flight_date'
require 'date'

describe FlightDate do
  context 'today?' do
    let(:today) { Date.today }
    let(:yesterday) { Date.today - 1 }
    let(:tomorrow) { Date.today + 1 }

    it 'it returns true when from is today and to is nil' do
      expect(FlightDate.new(today).today?).to be true
    end

    it 'it returns false when from is the past and to is nil' do
      expect(FlightDate.new(yesterday).today?).to be false
    end

    it 'it returns false when from is in the future and to is nil' do
      expect(FlightDate.new(tomorrow).today?).to be false
    end

    it 'it returns true when from is today and to is in the future' do
      expect(FlightDate.new(today, tomorrow).today?).to be true
    end

    it 'it returns true when from is in the past and to is in the future' do
      expect(FlightDate.new(yesterday, tomorrow).today?).to be true
    end

    it 'it returns true when from is in the past and to is today' do
      expect(FlightDate.new(yesterday, today).today?).to be true
    end

    it 'it returns false when from is the future and to is in the future' do
      expect(FlightDate.new(tomorrow, tomorrow + 1).today?).to be false
    end

    it 'it returns false when from is the past and to is in the past' do
      expect(FlightDate.new(yesterday - 1, yesterday).today?).to be false
    end
  end
end
