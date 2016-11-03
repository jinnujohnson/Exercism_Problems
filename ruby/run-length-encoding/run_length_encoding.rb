module BookKeeping
  VERSION = 2
end

class RunLengthEncoding

  def self.encode(input)
    a = ""
    (0...(input.length)).each do |i|
      j = input[i + 1]
    a << input.count(input[i]) << input[i]
    continue if input[i] == input[j]
  end
    end


end
