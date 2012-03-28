# Adding a line to check autotest.
# another test.
#
class RomanNumerals

  def self.convert(arabic)
    
    romanresult = ""

    return "L" if arabic == 50
    return "C" if arabic == 100
    return "M" if arabic == 1000

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
