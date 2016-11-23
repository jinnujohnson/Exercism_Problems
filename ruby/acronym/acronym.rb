module BookKeeping
  VERSION = 2
end

class Acronym
  def self.abbreviate(acronym)
    acr = ""
    acronym.scan(/[A-Z]+[a-z]*|[a-z]+/) do |word|
    acr <<  word[0].upcase
    end
    acr
  end
end
