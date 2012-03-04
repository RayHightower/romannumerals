#romannumerals_spec
require_relative 'romannumerals'

describe "Roman Numerals" do

  context "Convert I" do
    it "should convert arabic number 1 to Roman Numeral I" do
      RomanNumerals.convert(1).should == "I"
    end
  end
  context "Convert II" do
    it "should convert arabic number 2 to Roman Numeral II" do
      RomanNumerals.convert(2).should == "II"
    end
  end
end

