require_relative '../lib/a2r'

describe 'write the first test' do
  it 'should return I for 1' do
    A2r.calc(1).should == 'I'
  end
end
