require_relative '../lib/arabic2roman.rb'

ROMANLIST = { 1 => "I", 2 => "II", 4 => "IV", 5 => "V", 6 => "VI", 9 => "IX", 10 => "X", 14 => "XIV", 19 => "XIX", 20 => "XX" }

describe "Arabic to Roman" do

  ROMANLIST.each do |arabic, roman|
    it "should convert Arabic to Roman from the list" do
      Arabic2Roman.convert(arabic).should == roman
    end
  end

  context "Convert Arabic 1, 2, & 3 to Roman" do
    it "should convert Arabic 1 to Roman I" do
      Arabic2Roman.convert(1).should == "I"
    end
    it "should convert Arabic 2 to Roman II" do
      Arabic2Roman.convert(2).should == "II"
    end
    it "should convert Arabic 3 to Roman III" do
      Arabic2Roman.convert(3).should == "III"
    end
  end
  context "Convert Arabic 4 to IV" do
    it "should convert Arabic 4 to Roman IV" do
      Arabic2Roman.convert(4).should == "IV"
    end
  end
  context "Convert Arabic 5 to V" do
    it "should convert Arabic 5 to Roman V" do
      Arabic2Roman.convert(5).should == "V"
    end
  end
  context "Convert Arabic 6 to IV" do
    it "should convert Arabic 6 to Roman IV" do
      Arabic2Roman.convert(6).should == "VI"
    end
  end
  context "Convert Arabic 10 to X" do
    it "should convert Arabic 10 to Roman X" do
      Arabic2Roman.convert(10).should == "X"
    end
  end
  context "Convert Arabic 50 to L" do
    it "should convert Arabic 50 to Roman L" do
      Arabic2Roman.convert(50).should == "L"
    end
  end
end
