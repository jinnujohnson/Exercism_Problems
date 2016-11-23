module BookKeeping
  VERSION = 2
end

class Acronym
  def abbreviate(acronym)
    array = acronym.split
    array.each do |word|
      word[0]
    end
  end
end
