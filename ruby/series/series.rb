class Series
  def initialize(string)
    @string = string
  end
  def slices(count)
    chars = @string.to_s.chars
    length = @string.length
    k = l = 0
    b = []
    (1..length).each do |i|
      a = []
      k = l
if l < length - 1
      (0...count).each do |j|
        a << chars[k].to_i
        k += 1
      end
      b << a
      l += 1
end
    end
    b
  end
end
