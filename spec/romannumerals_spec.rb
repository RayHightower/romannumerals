# Yet another test.
#romannumerals_spec
require_relative '../lib/romannumerals'

describe "Roman Numerals" do

  context "Convert I" do
    it "should convert arabic number 1 to Roman Numeral I" do
      RomanNumerals.convert(1).should == "I"
    end
  end

  context "Convert II" do
    it "should convert arabic number 2 to Roman Numeral I" do
      RomanNumerals.convert(2).should == "II"
    end
  end

  context "Convert III" do
    it "should convert arabic number 3 to Roman Numeral III" do
      RomanNumerals.convert(3).should == "III"
    end
  end

  context "Convert V" do
    it "should convert arabic number 5 to Roman Numeral V" do
      RomanNumerals.convert(5).should == "V"
    end
  end

  context "Convert X" do
    it "should convert arabic number 10 to Roman Numeral X" do
      RomanNumerals.convert(10).should == "X"
    end
  end

  context "Convert L" do
    it "should convert arabic number 50 to Roman Numeral L" do
      RomanNumerals.convert(50).should == "L"
    end
  end

  context "Convert C" do
    it "should convert arabic number 100 to Roman Numeral C" do
      RomanNumerals.convert(100).should == "C"
    end
  end
  
  context "Convert M" do
    it "should convert arabic number 1000 to Roman Numeral M" do
      RomanNumerals.convert(1000).should == "M"
    end
  end

end

