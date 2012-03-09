#romannumerals_spec
require_relative 'romannumerals'

describe "Roman Numerals" do

  context "Convert I" do
    it "should convert arabic number 1 to Roman Numeral I" do
      RomanNumerals.convert(1).should == "I"
    end
  end

  context "Convert II" do
    it "should convert arabic number 1 to Roman Numeral I" do
      RomanNumerals.convert(2).should == "II"
    end
  end

  context "Convert V" do
    it "should convert arabic number 5 to Roman Numeral V" do
      RomanNumerals.convert(5).should == "V"
    end
  end

  context "Convert X" do
    it "should convert arabic number 5 to Roman Numeral X" do
      RomanNumerals.convert(10).should == "X"
    end
  end

end

