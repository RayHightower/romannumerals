class Arabic2Roman

  CONVERTER = { 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }

  def self.convert(arabic)
    roman = ""

    CONVERTER.each do |arabickey, romanval|

      while arabic >= arabickey 
        roman += romanval
        arabic -= arabickey
      end

    end

    return roman

  end
end
