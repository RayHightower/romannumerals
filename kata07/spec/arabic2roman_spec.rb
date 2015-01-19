require_relative '../lib/arabic2roman'

  # Must use the old hashrocket syntax if integers are used as keys.
  ARABICCONV = { 1 => "I", 2 => "II", 4 => "IV", 5 => 'V', 9 => 'IX', 20 => 'XX', 40 => 'XL', 50 => 'L', 90 => 'XC',
               100 => 'C', 400 => 'CD', 500 => 'D', 900 => 'CM', 1000 => 'M', 3000 => 'MMM' }


describe 'handle greater than 3,000 and less than zero' do
  it 'should return feedback for less than one' do
    expect(Arabic2Roman.calc(0)).to eq 'Nothing less than Arabic 1 allowed.'
  end
  it 'should return feedback for greater than 3,000' do
    expect(Arabic2Roman.calc(3001)).to eq 'Nothing greater than Arabic 3,000 allowed.'
  end
end

describe 'go thru ARABICCONV and test each' do
  ARABICCONV.each do |arabic, roman| 
    it 'should return Roman for Arabic' do
      expect(Arabic2Roman.calc(arabic)).to eq roman
    end
  end
end

