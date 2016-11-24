class RunLengthEncoding

  def self.encode(string)
    a =[]
    string.each_char.inject([]) do |memo, c|
      a.last && c == a.last.last ? a.last[0] += 1 : a << [1,c]
      a
    end
    a.flatten!
    a  -= [1]
    a.join
  end

  def self.decode(string)
    string.scan(/(\d*)(\D)/).collect do |length, char|
      length = 1 if length.empty?
      char * length.to_i
    end.join
  end

end
