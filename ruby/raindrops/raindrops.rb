module BookKeeping
  VERSION = 3
end

class Raindrops

  def self.convert(number)
    a = []
    if number == 1
      return number.to_s
    else

      (2..number).each do|i|
        if number % i == 0
          a << i
        end
      end
      output = ""
      output << "Pling" if a.include?(3)
      output << "Plang" if a.include?(5)
      output << "Plong" if a.include?(7)

      output.empty? ? number.to_s : output
  end
  end
end
