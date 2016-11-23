module BookKeeping
  VERSION = 2
end

class Acronym
  def self.abbreviate(phrase)
    acronym = ""
    phrase.scan(/[A-Z]+[a-z]*|[a-z]+/) do |word|
    acronym <<  word[0].upcase
    end
    acronym
  end
end
