class PrimeFactors

  def for(number)
    prime = number
    a = []
    (2...prime).each do|i|
      if prime % i == 0
        a << i
        prime /= i
      end
    end
  end
