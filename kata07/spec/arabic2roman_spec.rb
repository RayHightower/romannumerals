require_relative '../lib/arabic2roman'

ARABICCONV = { 1 => 'I', 2 => 'II', 4 => 'IV', 5 => 'V', 9 => 'IX', 20 => 'XX', 40 => 'XL', 50 => 'L', 90 => 'XC',
               100 => 'C', 400 => 'CD', 500 => 'D', 900 => 'CM', 1000 => 'M', 3000 => 'MMM' }


describe 'go thru ARABICCONV and test each' do
  ARABICCONV.each do |arabic, roman| 
    it 'should return Roman for Arabic' do
      Arabic2Roman.calc(arabic).should == roman
    end
  end
end

