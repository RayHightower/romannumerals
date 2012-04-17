class Arabic2Roman

  def self.convert(arabic)

    roman = ""

    while arabic >= 1 do
      roman += "I"
      arabic -= 1
    end
    
    return roman

  end
end
