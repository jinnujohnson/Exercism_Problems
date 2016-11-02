class PrimeFactors

  def self.for(number)
    prime = number
    factors = []
    (2..prime).each do|i|
      if prime % i == 0
        factors << i
        prime /= i
        redo
      end
      break if prime < 2
    end
    factors
  end
end
