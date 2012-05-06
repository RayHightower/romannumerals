class Arabic2Roman

  CONVERTERS = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL',
                 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I' }
  
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
