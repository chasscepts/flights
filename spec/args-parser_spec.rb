require_relative '../lib/args-parser'

describe ArgsParser do
  let(:parser) { ArgsParser.new }

  it 'return empty hash when no argument is empty' do
    expect(parser.parse([])).to eq({})
  end

  it 'correctly strips single dash from options' do
    expect(parser.parse(['-p'])).to have_key 'p'
  end

  it 'correctly strips double dash from options' do
    expect(parser.parse(['--options'])).to have_key 'options'
  end

  it 'sets option to "present" when default is not passed in and value is not provided' do
    expect(parser.parse(['--options'])['options']).to eq 'present'
  end

  it 'sets option to the default when value is not provided' do
    expect((ArgsParser.new('default')).parse(['--options'])['options']).to eq 'default'
  end

  it 'sets option to value when value provided' do
    expect(parser.parse(['--options', 'none', '-v'])['options']).to eq 'none'
  end

  it 'correctly parses an array of options' do
    args = ['--options', 'none', '-v', '-cols', '4', '--rows', '4', '--mute']
    expected = {'options' => 'none', 'v' => 'present', 'cols' => '4', 'rows' => '4', 'mute' => 'present'}
    expect(parser.parse(args)).to eq expected
  end
end