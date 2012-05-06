require_relative '../lib/arabic2roman'

ARABICCONV = { 1 => 'I', 2 => 'II', 4 => 'IV', 5 => 'V' }

describe 'go thru ARABICCONV and test each one' do
  ARABICCONV.each do |arabic, roman| 
    it 'should return Roman for Arabic' do
      Arabic2Roman.calc(arabic).should == roman
    end
  end
end

