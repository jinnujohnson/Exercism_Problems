class Grains
  def self.square(nthsquare)
    2**(nthsquare - 1)
  end
  def self.total
    squares = 64
    (1 - 2**squares) / (1-2)
  end
end
