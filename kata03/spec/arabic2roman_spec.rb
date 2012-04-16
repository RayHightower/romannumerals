require_relative '../lib/arabic2roman'

describe 'it should convert 1 to I' do
  it "should convert Arabic to Roman" do
    Arabic2Roman.convert(1).should == "I"
  end
end
