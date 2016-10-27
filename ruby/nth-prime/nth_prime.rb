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
      is_prime = 1
      is_fact = 2
      jmax = Math.sqrt(num)
      while is_fact <= jmax
        is_prime = 0  if num % is_fact == 0
        is_fact += 1
      end
      count += 1 if is_prime == 1
    end
    return num if count == limit
  end
end
