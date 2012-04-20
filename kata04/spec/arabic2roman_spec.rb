require_relative '../lib/arabic2roman'

ARABIC2ROMANTABLE = { 1 => "I", 3 => "III", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 30 => "XXX" }

describe "let's run the tests through a loop" do

  ARABIC2ROMANTABLE.each do |arabtab, romantab|
    it "should convert Arabic 30 to Roman XXX" do
      Arabic2Roman.convert(arabtab).should == romantab
    end
  end
end
