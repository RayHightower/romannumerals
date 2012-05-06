class Arabic2Roman

  CONVERTERS = { 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I' }
  
  def self.calc(arabic)

    roman = ''

    CONVERTERS.each do |arabicconv, romanconv|
      while arabic >= arabicconv
        roman += romanconv
        arabic -= arabicconv
      end
    end

    return roman
    
  end
end
