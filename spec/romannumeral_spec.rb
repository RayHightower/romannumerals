# Yet another test.
#romannumerals_spec
require_relative '../lib/romannumeral'

  ROMANNUMERALS = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }

describe "Roman Numerals" do

  context "Convert ROMANNUMERALS symbols one at a time" do
    ROMANNUMERALS.each do |arabic, roman|
      it "should convert Arabic number n to the corresponding Roman Numerals." do
        RomanNumeral.convert(arabic).should == roman
      end

    end

    it "should convert Arabic number 1 to Roman Numeral I" do
      RomanNumeral.convert(1).should == "I"
    end
    it "should convert Arabic number 2 to Roman Numeral I" do
      RomanNumeral.convert(2).should == "II"
    end
    it "should convert Arabic number 3 to Roman Numeral III" do
      RomanNumeral.convert(3).should == "III"
    end
  end

  context "Convert I, II, & III" do
    it "should convert Arabic number 1 to Roman Numeral I" do
      RomanNumeral.convert(1).should == "I"
    end
    it "should convert Arabic number 2 to Roman Numeral I" do
      RomanNumeral.convert(2).should == "II"
    end
    it "should convert Arabic number 3 to Roman Numeral III" do
      RomanNumeral.convert(3).should == "III"
    end
  end

  context "Convert V" do
    it "should convert Arabic number 5 to Roman Numeral V" do
      RomanNumeral.convert(5).should == "V"
    end
  end

  context "Convert X, XX, and XXX" do
    it "should convert Arabic number 10 to Roman Numeral X" do
      RomanNumeral.convert(10).should == "X"
    end
    it "should convert Arabic number 20 to Roman Numeral XX" do
      RomanNumeral.convert(20).should == "XX"
    end
  end

  context "Convert XXI" do
    it "should convert Arabic number 21 to Roman Numeral XXI" do
      RomanNumeral.convert(21).should == "XXI"
    end
  end

  context "Convert L" do
    it "should convert Arabic number 50 to Roman Numeral L" do
      RomanNumeral.convert(50).should == "L"
    end
  end

  context "Convert C" do
    it "should convert Arabic number 100 to Roman Numeral C" do
      RomanNumeral.convert(100).should == "C"
    end
  end
  
  context "Convert M" do
    it "should convert Arabic number 1000 to Roman Numeral M" do
      RomanNumeral.convert(1000).should == "M"
    end
  end

  context "Convert MMX" do
    it "should convert Arabic number 2010 to Roman Numeral MMX" do
      RomanNumeral.convert(2010).should == "MMX"
    end
  end

  context "Handle overflow: Nothing bigger than 3000" do
    it "should tell users to stay below 3000" do
      RomanNumeral.convert(3001).should == "Nothing larger than Arabic 3,000, please!"
    end
  end

  context "Deal with subtraction: IV, CM, etc." do
    it "should handle numbers ending in Arabic 4" do
      RomanNumeral.convert(4).should == "IV"
    end
    it "should handle numbers ending in Arabic 14" do
      RomanNumeral.convert(14).should == "XIV"
    end
    it "should handle numbers ending in Arabic 24" do
      RomanNumeral.convert(24).should == "XXIV"
    end
    it "should handle numbers with Arabic 4 in the tens digit" do
      RomanNumeral.convert(40).should == "XL"
    end
    it "should handle 41" do
      RomanNumeral.convert(41).should == "XLI"
    end
    it "should handle 91" do
      RomanNumeral.convert(91).should == "XCI"
    end
    it "should handle 901" do
      RomanNumeral.convert(901).should == "CMI"
    end
    it "should handle 401" do
      RomanNumeral.convert(401).should == "CDI"
    end
    it "should handle 500" do
      RomanNumeral.convert(500).should == "D"
    end
  end

end

