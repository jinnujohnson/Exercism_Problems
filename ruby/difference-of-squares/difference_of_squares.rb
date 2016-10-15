module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(count)
    @count = count
  end

  def square_of_sum
    (@count * (@count + 1) / 2) ** 2
  end

  def sum_of_squares
    (@count * (@count + 1) * (2 * @count + 1)) / 6
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
