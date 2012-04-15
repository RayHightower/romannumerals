class Arabic2Roman

  def self.convert(arabic)
    roman = ""

    if arabic == 10
      roman += "X"
      arabic -= 10
    end

    if arabic == 5
      roman += "V"
      arabic -= 5
    end

    if arabic == 4
      roman += "IV"
      arabic -= 4
    end

    while arabic >= 1
      roman += "I"
      arabic -= 1
    end

    return roman
    
  end

end
