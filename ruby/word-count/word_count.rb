module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(string)
    @phrases = string.downcase
    @count = Hash.new(0)
  end

  def word_count
    @phrases.gsub!(/[^0-9a-z']/, ' ')
    @phrases = @phrases.split
    @phrases.each { |word|
      if (word[0] == "'" &&  word[-1] == "'")
        word[0] = ""
        word.chop!
      end
      @count[word] += 1
    }
    @count
  end
end
