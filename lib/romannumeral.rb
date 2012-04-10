# Adding a line to check autotest.
# another test.
#
class RomanNumeral

  ROMANNUMERALS = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
      
  def self.convert(arabic)
    
    romanresult = ""

    if arabic < 1
      romanresult = "Nothing smaller than Arabic 0, please!"
      arabic = 0
    end
    
    if arabic > 3000
      romanresult = "Nothing larger than Arabic 3,000, please!"
      arabic = 0
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
