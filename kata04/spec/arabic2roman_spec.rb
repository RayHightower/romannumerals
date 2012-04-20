require_relative '../lib/arabic2roman'

ARABIC2ROMANTABLE = { 1 => "I", 3 => "III", 4 => "IV", 5 => "IV", 9 => "IX", 10 => "X", 30 => "XXX" }

describe "do the first conversions" do
  it "should convert Arabic 1 to Roman I" do
    Arabic2Roman.convert(1).should == "I"
  end
  it "should convert Arabic 2 to Roman II" do
    Arabic2Roman.convert(2).should == "II"
  end
  it "should convert Arabic 5 to Roman V" do
    Arabic2Roman.convert(5).should == "V"
  end
  it "should convert Arabic 10 to Roman X" do
    Arabic2Roman.convert(10).should == "X"
  end
  it "should convert Arabic 30 to Roman XXX" do
    Arabic2Roman.convert(30).should == "XXX"
  end
end

describe "let's run the tests through a loop" do

  ARABIC2ROMANTABLE.each do |arabtab, romantab|
    it "should convert Arabic 30 to Roman XXX" do
      Arabic2Roman.convert(arabtab).should == romantab
    end
  end
end
