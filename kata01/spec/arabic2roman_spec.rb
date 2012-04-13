require_relative '../lib/arabic2roman.rb'

describe "Arabic to Roman" do

  context "Convert Arabic 1, 2, & 3 to Roman" do
    it "should convert Arabic 1 to Roman I" do
      Arabic2Roman.convert(1).should == "I"
    end
    it "should convert Arabic 2 to Roman II" do
      Arabic2Roman.convert(2).should == "II"
    end
    it "should convert Arabic 3 to Roman III" do
      Arabic2Roman.convert(3).should == "III"
    end
  end
  context "Convert Arabic 5 to V" do
    it "should convert Arabic 5 to Roman V" do
      Arabic2Roman.convert(5).should == "V"
    end
  end
  context "Convert Arabic 10 to X" do
    it "should convert Arabic 10 to Roman X" do
      Arabic2Roman.convert(10).should == "X"
    end
  end
end
