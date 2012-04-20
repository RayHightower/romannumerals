require_relative '../lib/arabic2roman'

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
