class Arabic2Roman

  CONVERTER = { 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }

  def self.convert(arabic)
    roman = ""

    CONVERTER.each do |arabicconv, romanconv|

      while arabicconv >= arabic
        roman += romanconv
        arabic -= arabicconv
      end

    end

    while arabic >= 10
      roman += "X"
      arabic -= 10
    end

    if arabic >= 5
      roman += "V"
      arabic -= 5
    end

    if arabic >= 4
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
