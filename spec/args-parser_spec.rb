require_relative '../lib/args-parser'

describe ArgsParser do
  let(:paser) { ArgsParser.new }

  it 'return empty hash when no argument is empty' do
    expect((ArgsParser.new).parse([])).to eq {}
  end

  it 'correctly strips single dash from options' do
    expect((ArgsParser.new('present')).parse(['-p'])).should have_key 'p'
  end

  it 'correctly strips double dash from options' do
    expect((ArgsParser.new('present')).parse(['--options'])).should have_key 'options'
  end

  it 'sets option to "present" when default is not passed in and value is not provided' do
    expect((ArgsParser.new).parse(['--options']).option).to eq 'present'
  end

  it 'sets option to the default when value is not provided' do
    expect((ArgsParser.new('default')).parse(['--options']).option).to eq 'default'
  end

  it 'sets option to value when value provided' do
    expect((ArgsParser.new).parse(['--options', 'none', '-v']).option).to eq 'none'
  end
end