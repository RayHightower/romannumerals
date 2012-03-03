#romannumerals_spec
require 'romannumerals'

describe "Roman Numerals" do

  context "Convert I" do
    it "should convert number 1 to Roman Numeral I" do
      @roman.convert(1).should == "I"
    end
  end
end
