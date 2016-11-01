class PhoneNumber
attr_reader :number

  def initialize(number)
    @number = clean(number)
  end

  def clean(number)
    return '0' * 10 if number =~ (/[a-zA-Z]/)
    number.gsub!(/[^0-9]/, '')
    check(number)
  end

  def check(number)
    if is_valid?(number)
        return number.length == 11 ? number.slice!(1..10) : number
    else
      return '0' * 10
    end
  end

  def is_valid?(number)
   return true if number.length == 10
   return true if number.length == 11 && number.start_with?('1')
   false
 end
end
