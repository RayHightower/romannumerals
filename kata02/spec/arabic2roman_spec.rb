require_relative '../lib/arabic2roman'

ROMANTABLE = { 1 => "I", 2 => "II", 4 => "IV", 5 => "V", 9 => "IX",
               10 => "X", 14 => "XIV", 19 => "XIX", 24 => "XXIV", 40 => "XL", 50 => "L", 
               100 => "C", 400 => "CD", 500 => "D",
               1000 => "M", 3000 => "MMM" } 


describe "Test a bunch of edge cases." do

  ROMANTABLE.each do |arabic, roman| 

    it "should convert Arabic to Roman according to the table." do
      Arabic2Roman.convert(arabic).should == roman
    end

  end

end

describe "Handle overflow and underflow." do
  it "should tell us when we've hit overflow" do
    Arabic2Roman.convert(3001).should == "Overflow. Nothing larger than 3000."
  end
  it "should tell us when we've hit underflow" do
    Arabic2Roman.convert(-1).should == "Underflow. Nothing less than zero."
  end
end
