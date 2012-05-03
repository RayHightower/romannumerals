require_relative '../lib/arabic2roman'

describe 'create the first test, and make it fail' do
  it 'should return I for 1' do
    Arabic2Roman.calc(1).should == 'I'
  end
end
