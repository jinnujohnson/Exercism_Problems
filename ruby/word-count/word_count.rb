module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(string)
    @phrases = string.downcase
    @count = Hash.new(0)
  end

  def word_count
    @phrases.gsub!(/[^0-9A-Za-z']/,' ')
    @ph = @phrases.split
    @ph.each { |word|
        @count[word] += 1
    }
    @count
  end
end
