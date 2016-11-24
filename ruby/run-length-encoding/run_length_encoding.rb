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

end
