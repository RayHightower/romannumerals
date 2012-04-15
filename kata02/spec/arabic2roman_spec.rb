require_relative '../lib/arabic2roman'

ROMANTABLE = { 1 => "I", 2 => "II", 4 => "IV", 5 => "V", 9 => "IX",
               10 => "X", 14 => "XIV", 19 => "XIX", 24 => "XXIV", 40 => "XL" }

describe "Work our way through ROMANTABLE" do

  ROMANTABLE.each do |arabic, roman| 

    it "should convert Arabic to Roman according to the table." do
      Arabic2Roman.convert(arabic).should == roman
    end

  end

end

