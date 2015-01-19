require_relative '../lib/a2r'

describe 'write the first test' do
  it 'should return I for 1' do
    expect(A2r.calc(1)).to eq 'I'
  end
  it 'should return II for 2' do
    expect(A2r.calc(2)).to eq 'II'
  end
end
