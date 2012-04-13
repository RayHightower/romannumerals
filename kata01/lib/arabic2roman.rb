class Arabic2Roman

  ROMANBRICKS = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
                  100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
                  10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 
                  1 => "I" }

  def self.convert (arabic)

    roman = ""

    return "Overflow." if arabic > 3000
    return "Nothing less than one." if arabic < 1

    ROMANBRICKS.each do |arabicbrick, romanbrick|
      while arabic >= arabicbrick
        roman += romanbrick
        arabic -= arabicbrick
      end
    end

    return roman

  end

end
