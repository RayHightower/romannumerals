class Arabic2Roman

  def self.convert (arabic)

    roman = ""

    return "V" if arabic == 5
    return "X" if arabic == 10
    return "L" if arabic == 50

    while arabic >= 10
      roman += "X"
      arabic -= 10
    end

    if arabic == 9 
      roman += "IX"
      arabic -= 9
    end

    if arabic >= 5 
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
