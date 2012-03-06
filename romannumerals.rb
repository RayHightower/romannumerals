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

    return roman

  end

end
