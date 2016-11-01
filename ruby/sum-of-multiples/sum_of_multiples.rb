class SumOfMultiples

  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    sum = 0
    factors = []
    (1...limit).each do |i|
      @numbers.each {|num|
        factors << i  if i % num == 0
      }
    end
    factors.uniq.each { |i| sum += i }
    sum
  end

end
