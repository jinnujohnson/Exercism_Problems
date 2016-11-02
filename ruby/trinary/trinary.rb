module BookKeeping
  VERSION = 1
end

class Trinary
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 if number =~ /[4-9a-zA-z]/
    trinary = number.chars.to_a
    sum = 0
    (0...trinary.length).each do |i|
      sum += (trinary.pop.to_i) * 3**i
    end
    sum
  end
end
