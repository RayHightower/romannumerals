# Adding a line to check autotest.
# another test.
#
class RomanNumeral

  def self.convert(arabic)
    
    romanresult = ""

    if arabic == 0
      romanresult = "Romans did not have a symbol for zero."
      arabic = 0
    end
    
    if arabic > 3000
      romanresult = "Nothing larger than Arabic 3,000, please!"
      arabic = 0
    end
    
    while arabic >= 1000
      romanresult += "M"
      arabic -= 1000
    end

    if arabic >= 900
      romanresult += "CM"
      arabic -= 900
    end

    while arabic >= 500
      romanresult += "D"
      arabic -= 500
    end

    if arabic >= 400
      romanresult += "CD"
      arabic -= 400
    end

    while arabic >= 100
      romanresult += "C"
      arabic -= 100
    end

    if arabic >= 90
      romanresult += "XC"
      arabic -= 90
    end

    while arabic >= 50
      romanresult += "L"
      arabic -= 50
    end

    if arabic >= 40
      romanresult += "XL"
      arabic -= 40
    end

    while arabic >= 10
      romanresult += "X"
      arabic -= 10
    end

    if arabic == 9
      romanresult += "IX"
      arabic -= 9
    end

    while arabic >= 5
      romanresult += "V"
      arabic -= 5
    end

    while arabic == 4
      romanresult += "IV"
      arabic -= 4
    end

    while arabic >= 1
      romanresult += "I"
      arabic -= 1
    end

    return romanresult

  end

end
