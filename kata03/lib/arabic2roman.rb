class Arabic2Roman

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
