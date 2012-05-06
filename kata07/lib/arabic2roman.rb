class Arabic2Roman

  def self.calc(arabic)

    roman = ''

    while arabic >= 5
      roman += 'V'
      arabic -= 5
    end

    while arabic >= 4
      roman += 'IV'
      arabic -= 4
    end

    while arabic >= 1
      roman += 'I'
      arabic -= 1
    end

    return roman
    
  end
end
