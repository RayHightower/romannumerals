require_relative '../lib/arabic2roman'

ROMANTESTSUBJECTS = { 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 9 => "IX",
                      10 => "X", 14 => "XIV", 19 => "XIX", 24 => "XXIV", 30 => "XXX", 40 => "XL", 50 => "L", 90 => "XC" }

describe 'it should convert according to the ROMANTESTSUBJECTS table' do
  ROMANTESTSUBJECTS.each do |arabic, roman|
    it "should convert Arabic to Roman" do
      expect(Arabic2Roman.convert(arabic)).to eq roman
    end
  end

  it "should handle overflow" do
    expect(Arabic2Roman.convert(3001)).to eq "Overflow."
  end

  it "should handle underflow" do
    expect(Arabic2Roman.convert(0)).to eq "Underflow."
  end
end
