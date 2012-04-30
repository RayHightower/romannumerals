class Arabic2Roman

  def self.convert(arabic)
    roman = ''

    while arabic >= 10 do
      roman += 'X'
      arabic -= 10
    end

    while arabic >= 9 do
      roman += 'IX'
      arabic -= 9
    end

    while arabic >= 5 do
      roman += 'V'
      arabic -= 5
    end

    while arabic >= 4 do
      roman += 'IV'
      arabic -= 4
    end

    while arabic >= 1 do
      roman += 'I'
      arabic -= 1
    end

    return roman
    
  end
end
