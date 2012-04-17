class Arabic2Roman

  def self.convert(arabic)

    roman = ""

    if arabic == 4
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
