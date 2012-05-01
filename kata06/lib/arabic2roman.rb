class Arabic2Roman

  A2RCONV = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
              90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I' }

  def self.convert(arabic)
    roman = ''

    A2RCONV.each do |arabicconv, romanconv|

      while arabic >= arabicconv do
        roman += romanconv
        arabic -= arabicconv
      end
      
    end

    return roman
    
  end
end
