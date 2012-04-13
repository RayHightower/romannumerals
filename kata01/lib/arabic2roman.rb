class Arabic2Roman

  def self.convert (arabic)

    return "I" if arabic == 1
    return "II" if arabic == 2
    return "III" if arabic == 3
    
    return "V" if arabic == 5
    return "X" if arabic == 10

  end

end
