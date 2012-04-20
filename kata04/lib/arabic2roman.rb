class Arabic2Roman

  BRICKS = { 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }

  def self.convert(arabic)
    roman = ""

    return "Overflow." if arabic > 3000
    return "Underflow." if arabic < 1

    BRICKS.each do |arabbrick, romanbrick|
      while arabic >= arabbrick
        roman += romanbrick
        arabic -= arabbrick
      end
    end

    return roman
    
  end
end

