class Arabic2Roman

  CONVERTERS = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL',
                 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I' }
  
  def self.calc(arabic)

    roman = ''

    if arabic < 1
      roman = 'Nothing less than Arabic 1 allowed.'
      arabic = 0
    end

    if arabic > 3000
      roman = 'Nothing greater than Arabic 3,000 allowed.'
      arabic = 0
    end

    CONVERTERS.each do |arabicconv, romanconv|
      while arabic >= arabicconv
        roman += romanconv
        arabic -= arabicconv
      end
    end

    return roman
    
  end
end
