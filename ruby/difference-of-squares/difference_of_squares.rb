module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(count)
    @count = count
  end

  def square_of_sum
    square_sum = (@count * (@count + 1) / 2) ** 2
    return square_sum
  end

  def sum_of_squares
    sum_square = (@count * (@count + 1) * (2 * @count + 1)) / 6
    return sum_square
  end

  def difference
    diff = square_of_sum - sum_of_squares
    return diff
  end
end
