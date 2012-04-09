# Adding a line to check autotest.
# another test.
#
class RomanNumeral

  ROMANNUMERALS = { 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
      
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

    ROMANNUMERALS.each do |arabiceq, roman|
      while arabic >= arabiceq
       romanresult += roman
       arabic -= arabiceq
      end
    end

    return romanresult

  end

end
