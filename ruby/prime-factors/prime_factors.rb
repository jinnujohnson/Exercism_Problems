class PrimeFactors

  def self.for(number)
    prime = number
    a = []
    (2..prime).each do|i|
      if prime % i == 0
        a << i
        prime /= i
        redo
      end
    end
    a
  end
end
