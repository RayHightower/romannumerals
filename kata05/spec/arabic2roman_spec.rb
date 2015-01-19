require_relative '../lib/arabic2roman'

describe "convert Arabic to Roman" do
  it 'should convert 1 to I' do
    expect(Arabic2Roman.convert(1)).to.eq "I"
  end
  it 'should convert 2 to II' do
    expect(Arabic2Roman.convert(2)).to.eq "II"
  end
  it 'should convert 3 to III' do
    expect(Arabic2Roman.convert(3)).to.eq "III"
  end
  it 'should convert 4 to IV' do
    expect(Arabic2Roman.convert(4)).to.eq "IV"
  end
  it 'should convert 5 to V' do
    expect(Arabic2Roman.convert(5)).to.eq "V"
  end
  it 'should convert 10 to X' do
    expect(Arabic2Roman.convert(10)).to.eq "X"
  end
  it 'should convert 20 to XX' do
    expect(Arabic2Roman.convert(20)).to.eq "XX"
  end
end
