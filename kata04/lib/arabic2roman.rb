class Arabic2Roman

  def self.convert(arabic)
    roman = ""

    while arabic >= 10
      roman += "X"
      arabic -= 10
    end

    while arabic >= 5
      roman += "V"
      arabic -= 5
    end

    while arabic >= 1
      roman += "I"
      arabic -= 1
    end

    return roman

  end
end

