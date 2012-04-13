require_relative '../lib/arabic2roman.rb'

describe "Arabic to Roman" do

  context "Convert Arabic 1 to Roman I" do
    it "should convert Arabic 1 to Roman I" do
      Arabic2Roman.convert(1).should == "I"
    end
  end
end
