module BookKeeping
  VERSION = 3
end

class School

  def initialize
    @stud_grade = Hash.new { |hash, key| hash[key] = [] }
  end

  def students(grade)
    stud =[]
    @stud_grade.each {|g,name| stud << name if g == grade }
    stud
  end

  def add(name,grade)
    @stud_grade[grade] << name
    @stud_grade[grade].sort!
  end

end
