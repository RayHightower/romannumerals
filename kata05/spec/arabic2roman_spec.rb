require_relative '../lib/arabic2roman'

describe "convert Arabic to Roman" do
  it 'should convert 1 to I' do
    Arabic2Roman.convert(1).should == "I"
  end
end
