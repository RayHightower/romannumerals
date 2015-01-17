require_relative '../lib/arabic2roman.rb'

ROMANLIST = { 1 => "I", 2 => "II", 4 => "IV", 5 => "V", 6 => "VI", 9 => "IX", 
              10 => "X", 14 => "XIV", 19 => "XIX", 
              20 => "XX", 21 =>"XXI", 24 => "XXIV", 29 => "XXIX",
              30 => "XXX", 39 => "XXXIX",
              40 => "XL", 49 => "XLIX", 
              50 => "L", 59 => "LIX", 
              90 => "XC", 99 => "XCIX", 
              100 => "C", 300 => "CCC", 
              500 => "D", 900 => "CM", 
              1000 => "M", 1500 => "MD",  
              2000 => "MM", 2900 => "MMCM", 
              0 => "Nothing less than one.", 3001 => "Overflow." } 

describe "Arabic to Roman" do

  ROMANLIST.each do |arabic, roman|
    it "should convert Arabic to Roman from the list" do
      expect(Arabic2Roman.convert(arabic)).to eq roman
    end
  end

end
