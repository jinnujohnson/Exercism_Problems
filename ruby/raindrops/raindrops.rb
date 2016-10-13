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
      raindrops = ""
      raindrops << "Pling" if a.include?(3)
      raindrops << "Plang" if a.include?(5)
      raindrops << "Plong" if a.include?(7)

      raindrops.empty? ? number.to_s : raindrops
  end
  end
end
