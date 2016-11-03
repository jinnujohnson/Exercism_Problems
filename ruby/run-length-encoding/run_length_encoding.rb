module BookKeeping
  VERSION = 2
end

class RunLengthEncoding

  def self.encode(input)
    array = input.chars.to_a
    output = ""
      array.uniq.each do |i|
    output << input.count(i).to_s << i
  end
  output
    end

end
