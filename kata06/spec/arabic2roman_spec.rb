require_relative '../lib/arabic2roman'

describe 'given an Arabic number, return the corresponding Roman numeral' do
  it 'should return something' do
    Arabic2Roman.convert(1).should == 'I'
  end
  it 'should return I, II, or III' do
    Arabic2Roman.convert(2).should == 'II'
  end
  it 'should return V' do
    Arabic2Roman.convert(5).should == 'V'
  end
  it 'should return IV' do
    Arabic2Roman.convert(4).should == 'IV'
  end
  it 'should return X' do
    Arabic2Roman.convert(10).should == 'X'
  end
  it 'should return IX' do
    Arabic2Roman.convert(9).should == 'IX'
  end
end
