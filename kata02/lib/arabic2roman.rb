class Arabic2Roman


A2RTABLE = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 
             90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
  
  def self.convert(arabic)
    roman = ""

    if arabic > 3000
      return "Overflow. Nothing larger than 3000."
    end

    if arabic < 1
      return "Underflow. Nothing less than zero."
    end

    A2RTABLE.each do |avalue, rvalue|
      while arabic >= avalue do
        roman += rvalue
        arabic -= avalue
      end
    end

    return roman

  end

end
