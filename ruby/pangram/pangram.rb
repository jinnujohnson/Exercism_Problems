module BookKeeping
  VERSION = 2
end

class Pangram
  def self.is_pangram?(str)
    pan = str.downcase
    ('a'..'z').all? { |letter| pan.include?(letter) }
  end
end
