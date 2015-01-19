require_relative '../lib/arabic2roman'

ARABIC2ROMANTABLE = { 1 => "I", 3 => "III", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 30 => "XXX", 40 => "XL", 50 => "L", 90 => "XC",
                      100 => "C" }

describe "let's run the tests through a loop" do

  ARABIC2ROMANTABLE.each do |arabtab, romantab|
    it "should convert Arabic to Roman" do
      expect(Arabic2Roman.convert(arabtab)).to eq romantab
    end
  end
end

describe "handle overflow and underflow" do
  it "should handle overflow" do
    Arabic2Roman.convert(3001).should == "Overflow."
  end
  it "should handle underflow" do
    Arabic2Roman.convert(0).should == "Underflow."
  end
end
