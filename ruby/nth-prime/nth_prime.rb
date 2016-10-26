module BookKeeping
  VERSION = 1
end

class Prime

  def self.nth(limit)
    raise ArgumentError.new('N must be positive') if limit < 1
   return 2 if limit == 1
    count = 1
    i = 1

    while count < limit
      i += 2
    temp = 0
    j = 2
    jMax = Math.sqrt(i)
    while j <= jMax
      if i % j == 0
        temp = 1
      end
      j += 1
    end
      if temp == 0
        count += 1
      end

    end
if count == limit
      return i
    end

  end
end
