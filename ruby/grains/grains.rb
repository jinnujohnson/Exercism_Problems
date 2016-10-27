class Grains
  def self.square(squares)
    return 2**(squares-1)
  end
  def self.total
    return ( (1 - 2**64) / (1-2) )
  end
end
