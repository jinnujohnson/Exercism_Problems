class Series

  def initialize(string)
    @string = int_conversion(string)
  end

  def int_conversion(s)
    s.chars.to_a.map(&:to_i)
  end

  def slices(count)
    slice = []
    if count > @string.length
      fail ArgumentError.new('Unable To Slice')
    end
    i = -1
    begin
      i += 1
      j = i + count - 1
      slice << @string[i..j]
    end while j < @string.length - 1

    slice
  end
end
