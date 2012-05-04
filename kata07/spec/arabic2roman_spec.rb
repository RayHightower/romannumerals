require_relative '../lib/arabic2roman'

describe 'create the first test, and make it fail' do
  it 'should return I for 1' do
    Arabic2Roman.calc(1).should == 'I'
  end
  it 'should return II for 2' do
    Arabic2Roman.calc(2).should == 'II'
  end
end
