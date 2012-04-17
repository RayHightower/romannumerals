class Arabic2Roman

  ARABIC2ROMANTABLE = { 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }

  def self.convert(arabic)

    roman = ""

    while arabic >= 90
      roman += "XC"
      arabic -= 90
    end

    while arabic >= 50
      roman += "L"
      arabic -= 50
    end

    while arabic >= 40
      roman += "XL"
      arabic -= 40
    end

    while arabic >= 10
      roman += "X"
      arabic -= 10
    end

    while arabic >= 9
      roman += "IX"
      arabic -= 9
    end

    while arabic >= 5
      roman += "V"
      arabic -= 5
    end

    while arabic >= 4
      roman += "IV"
      arabic -= 4
    end

    while arabic >= 1 do
      roman += "I"
      arabic -= 1
    end
    
    return roman

  end
end
