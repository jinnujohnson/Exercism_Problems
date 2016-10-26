module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(limit)
    raise ArgumentError.new('N must be positive') if limit < 1
    return 2 if limit == 1
    count = num = 1

    while count < limit
      num += 2
      isPrime = 1
      isFact = 2
      jMax = Math.sqrt(num)
      while isFact <= jMax
        isPrime = 0  if num % isFact == 0
        isFact += 1
      end
      count += 1 if isPrime == 1
    end
    return num if count == limit
  end
end
