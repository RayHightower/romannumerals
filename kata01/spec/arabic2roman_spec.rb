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
end
