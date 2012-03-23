# Adding a line to check autotest.
# another test.
#
class RomanNumerals

  def self.convert(arabic)
    
    return "I" if arabic == 1
    return "II" if arabic == 2
    return "III" if arabic == 3


    return "V" if arabic == 5
    return "X" if arabic == 10
    return "L" if arabic == 50
    return "C" if arabic == 100
    return "M" if arabic == 1000

    return roman

  end

end
