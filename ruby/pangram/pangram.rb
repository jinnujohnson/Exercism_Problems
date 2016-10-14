module BookKeeping
  VERSION = 2
end

class Pangram
  def self.is_pangram?(str)
    str.downcase!
    ('a'..'z').all? { |letter| str.include?(letter) }
  end
end
