module BookKeeping
  VERSION = 2
end

class Binary
  attr_reader :number
  
  def initialize(number)
    @number = number
    fail ArgumentError.new("invalid binary input") unless valid?(number)
  end

  def to_decimal
    binary = number.chars.to_a
    sum = 0
    (0...binary.length).each do |i|
      sum += (binary.pop.to_i) * 2**i
    end
    sum
  end

  def valid?(number)
    return number.chars.all? {|x| x =~ /[01]/}
  end
end
