class Arabic2Roman

  def self.convert (arabic)

    roman = ""


    if arabic >= 100
      roman += "C"
      arabic -= 100
    end
    
    if arabic >= 90
      roman += "XC"
      arabic -= 90
    end
    
    if arabic >= 50
      roman += "L"
      arabic -= 50
    end
    
    if arabic >= 40
      roman += "XL"
      arabic -= 40
    end

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
