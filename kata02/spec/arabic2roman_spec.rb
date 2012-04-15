require_relative '../lib/arabic2roman'

ROMANTABLE = { 1 => "I", 2 => "II", 4 => "IV", 5 => "V", 9 => "IX",
               10 => "X" }

describe "Start with 1" do

  ROMANTABLE.each do |arabic, roman| 

    it "should convert Arabic to Roman according to the table." do
      Arabic2Roman.convert(arabic).should == roman
    end

  end

end

