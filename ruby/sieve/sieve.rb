class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    sieve = []
    prime = []
    sieve = (2..@limit).to_a
    until sieve.empty?
      a = sieve[0]
      prime << a
      sieve.delete_if {|i| i % a == 0}
    end
    prime
  end

end
