require_relative '../lib/arabic2roman.rb'

ROMANLIST = { 1 => "I", 2 => "II", 4 => "IV", 5 => "V", 6 => "VI", 9 => "IX", 
              10 => "X", 14 => "XIV", 19 => "XIX", 
              20 => "XX", 21 =>"XXI", 24 => "XXIV", 29 => "XXIX",
              30 => "XXX", 39 => "XXXIX",
              40 => "XL", 49 => "XLIX", 
              50 => "L", 59 => "LIX", 
              90 => "XC", 99 => "XCIX", 
              100 => "C", 300 => "CCC" } 

describe "Arabic to Roman" do

  ROMANLIST.each do |arabic, roman|
    it "should convert Arabic to Roman from the list" do
      Arabic2Roman.convert(arabic).should == roman
    end
  end

end
