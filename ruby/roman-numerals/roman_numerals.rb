module BookKeeping
  VERSION = 2
end

class Fixnum

  ROMAN_NUMS = {
    "M" => 1000,
    "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
    "XC" => 90,  "L" => 50,  "XL" => 40,  "X" => 10,
    "IX" => 9,   "V" => 5,   "IV" => 4,   "I" => 1
  }

  def to_roman
    num = self
    ROMAN_NUMS.map do |roman, arabic|
      amt, num = num.divmod(arabic)
      roman * amt
    end.join
  end

end
