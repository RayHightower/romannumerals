require_relative '../lib/arabic2roman'

ARABICCONV = { 1 => 'I', 2 => 'II', 4 => 'IV', 5 => 'V', 9 => 'IX', 20 => 'XX', 40 => 'XL', 50 => 'L', 90 => 'XC',
               100 => 'C', 400 => 'CD', 500 => 'D', 900 => 'CM', 1000 => 'M', 3000 => 'MMM' }


describe 'handle greater than 3,000 and less than zero' do
  it 'should return feedback for less than one' do
    Arabic2Roman.calc(0).should == 'Nothing less than Arabic 1 allowed.'
  end
  it 'should return feedback for greater than 3,000' do
    Arabic2Roman.calc(3001).should == 'Nothing greater than Arabic 3,000 allowed.'
  end
end

describe 'go thru ARABICCONV and test each' do
  ARABICCONV.each do |arabic, roman| 
    it 'should return Roman for Arabic' do
      Arabic2Roman.calc(arabic).should == roman
    end
  end
end

