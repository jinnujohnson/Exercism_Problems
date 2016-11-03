module BookKeeping
  VERSION = 2
end

class RunLengthEncoding

  def self.encode(input)
    a = ""
    (0...(input.length)).each do |i|
      j = i + 1
    a << input.count(input[i]) << input[i]
    next if input[i] == input[j]
  end
  a
    end
end
