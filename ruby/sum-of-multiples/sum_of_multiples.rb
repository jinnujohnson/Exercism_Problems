class SumOfMultiples

  def initialize(first,second,third = 1)
    @first = first
    @second = second
    @third = third
  end

  def to(limit)
    sum = 0
    for i in 1...limit
      if @third != 1
        sum += i if (i % @first == 0 || i % @second == 0 || i % @third == 0)
      else
        sum += i if (i % @first == 0 || i % @second == 0)
      end
    end
    sum
  end

end
