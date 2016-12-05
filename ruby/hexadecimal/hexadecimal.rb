class Hexadecimal
  BASE = 16

  attr_reader :digits
  def initialize(decimal)
    @digits = decimal.reverse.chars
  end

  def to_decimal
  return 0 unless (digits.join =~ /^[0-9a-f]/)

    decimal = 0
    digits.each_with_index do |digit, index|
      decimal += hexcodes[digit] * BASE**index
    end
    decimal
  end

  def hexcodes
    {
      '0' => 0,
      '1' => 1,
      '2' => 2,
      '3' => 3,
      '4' => 4,
      '5' => 5,
      '6' => 6,
      '7' => 7,
      '8' => 8,
      '9' => 9,
      'a' => 10,
      'b' => 11,
      'c' => 12,
      'd' => 13,
      'e' => 14,
      'f' => 15
    }
  end
end
