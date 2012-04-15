require_relative '../lib/arabic2roman'

describe "Start with 1" do
  it "should convert Arabic 1 to Roman I" do
    Arabic2Roman.convert(1).should == "I"
  end
  
end

