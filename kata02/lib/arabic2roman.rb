class Arabic2Roman


A2RTABLE = { 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
  
  def self.convert(arabic)
    roman = ""

    A2RTABLE.each do |avalue, rvalue|
      while arabic >= avalue do
        roman += rvalue
        arabic -= avalue
      end
    end

    return roman


    while arabic >= 10
      roman += "X"
      arabic -= 10
    end

    if arabic == 9
      roman += "IX"
      arabic -= 9
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
