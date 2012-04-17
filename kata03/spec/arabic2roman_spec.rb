require_relative '../lib/arabic2roman'

describe 'it should convert 1 to I' do
  it "should convert Arabic 1 to Roman I" do
    Arabic2Roman.convert(1).should == "I"
  end
  it "should convert Arabic 2 to Roman II" do
    Arabic2Roman.convert(2).should == "II"
  end
end
