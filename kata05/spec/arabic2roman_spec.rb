require_relative '../lib/arabic2roman'

describe "convert Arabic to Roman" do
  it 'should convert 1 to I' do
    Arabic2Roman.convert(1).should == "I"
  end
  it 'should convert 2 to II' do
    Arabic2Roman.convert(2).should == "II"
  end
  it 'should convert 3 to III' do
    Arabic2Roman.convert(3).should == "III"
  end
  it 'should convert 4 to IV' do
    Arabic2Roman.convert(4).should == "IV"
  end
  it 'should convert 5 to V' do
    Arabic2Roman.convert(5).should == "V"
  end
  it 'should convert 10 to X' do
    Arabic2Roman.convert(10).should == "X"
  end
  it 'should convert 20 to XX' do
    Arabic2Roman.convert(20).should == "XX"
  end
end
