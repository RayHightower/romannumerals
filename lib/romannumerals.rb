# Adding a line to check autotest.
# another test.
#
class RomanNumerals

  def self.convert(arabic)
    
    romanresult = ""

    if arabic >= 3000
      romanresult += "Nothing larger than Arabic 3,000, please!"
      arabic = 0
    end
    
    while arabic >= 1000
      romanresult += "M"
      arabic -= 1000
    end

    while arabic >= 100
      romanresult += "C"
      arabic -= 100
    end

    while arabic >= 50
      romanresult += "L"
      arabic -= 50
    end

    while arabic >= 10
      romanresult += "X"
      arabic -= 10
    end

    while arabic >= 5
      romanresult += "V"
      arabic -= 5
    end

    while arabic >= 1
      romanresult += "I"
      arabic -= 1
    end

    return romanresult

  end

end
