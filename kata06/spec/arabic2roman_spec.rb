require_relative '../lib/arabic2roman'

CONVERTLIST = { 1 => 'I', 2 => 'II', 5 => 'V', 9 => 'IX', 10 => 'X', 
                20 => 'XX', 24 => 'XXIV', 30 => 'XXX', 40 => 'XL', 50 => 'L',
                90 => 'XC', 100 => 'C', 500 => 'D', 900 => 'CM', 1000 => 'M',
                1964 => 'MCMLXIV' }

describe 'given an Arabic number, return the corresponding Roman numeral' do
  it 'should return something' do
    Arabic2Roman.convert(1).should == 'I'
  end
end

describe 'return the right Roman for each Arabic on the list' do
  CONVERTLIST.each do |arabic, roman|
    it 'should return the right conversion' do
      Arabic2Roman.convert(arabic).should == roman
    end
  end
end
