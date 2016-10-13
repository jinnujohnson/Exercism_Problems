module BookKeeping
  VERSION = 3
end

class Raindrops

  def self.factors(number)
    a = []
    (2..number/2).each do |i|
      if number % i == 0
        a << i.to_s
      end
    end
    return a
  end

def self.convert(num)
  if num == 1
    return num.to_s
  else
    prime = factors(num)
    prime.each {|n|
  case n
  when n == '3' then puts 'Pling'
  when n == '5' then puts 'Plang'
  when n == '7' then puts 'Plong'
  else puts "#{n}"
  end
}
end
end
end
