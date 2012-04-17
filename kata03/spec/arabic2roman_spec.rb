require_relative '../lib/arabic2roman'

ROMANTESTSUBJECTS = { 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 9 => "IX",
                      10 => "X", 14 => "XIV", 19 => "XIX" }

describe 'it should convert according to the ROMANTESTSUBJECTS table' do
  ROMANTESTSUBJECTS.each do |arabic, roman|
    it "should convert Arabic to Roman" do
      Arabic2Roman.convert(arabic).should == roman
    end
  end
end
