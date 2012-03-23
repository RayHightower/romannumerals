# Adding a line to check autotest.
# another test.
#
class RomanNumerals

  def self.convert(arabic)
    
    if arabic == 1
      roman = "I"
    end

    if arabic == 2
      roman = "II"
    end

    if arabic == 5
      roman = "V"
    end

    if arabic == 10 
      roman = "X"
    end

    if arabic == 50 
      roman = "L"
    end

    if arabic == 100 
      roman = "C"
    end

    if arabic == 1000
      roman = "M"
    end

    return roman

  end

end
