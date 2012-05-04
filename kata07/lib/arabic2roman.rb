class Arabic2Roman

  def self.calc(arabic)

    roman = ''

    while arabic >= 1
      roman += 'I'
      arabic -= 1
    end

    return roman
    
  end
end
