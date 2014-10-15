# Yet another test.
#romannumerals_spec
require_relative '../lib/romannumeral'

  ROMANNUMERALS = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
  RANDOMROMAN = { 3000 => "MMM", 2900 => "MMCM", 4 => "IV", 14 => "XIV", 24 => "XXIV", 41 => "XLI", 91 => "XCI", 901 => "CMI", 401 => "CDI" }

describe "Roman Numerals" do

  context "Convert ROMANNUMERALS symbols one at a time" do

    ROMANNUMERALS.each do |arabic, roman|
      it "should convert Arabic number n to the corresponding Roman Numerals." do
        expect(RomanNumeral.convert(arabic)).to eq roman
      end
    end
  end

  context "Convert RANDOMROMAN symbols one at a time" do
    RANDOMROMAN.each do |arabic, roman|
      it "should convert Arabic number n to the corresponding Roman Numerals." do
        RomanNumeral.convert(arabic).should == roman
      end
    end
  end

  context "Handle underflow and overflow: Nothing less than 1 or greater than 3000." do
    it "should tell users to stay below 3000" do
      RomanNumeral.convert(3001).should == "Nothing larger than Arabic 3,000, please!"
    end
    it "should tell users to stay above zero" do
      RomanNumeral.convert(-1).should == "Nothing smaller than Arabic 0, please!"
    end
  end

end

