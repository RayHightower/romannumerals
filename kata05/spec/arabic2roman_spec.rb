require_relative '../lib/arabic2roman'

describe "convert Arabic to Roman" do
  it 'should convert 1 to I' do
    Arabic2Roman.convert(1).should == "I"
  end
  it 'should convert 2 to II' do
    Arabic2Roman.convert(2).should == "II"
  end
end
