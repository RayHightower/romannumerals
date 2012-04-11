# Yet another test.
#romannumerals_spec
require_relative '../lib/romannumerals'

arabic = 2800

while arabic < 3500
  print arabic.to_s + " = " + RomanNumerals.convert(arabic).to_s + "\n"
  arabic += 1
end

print "End of List!" + "\n"

