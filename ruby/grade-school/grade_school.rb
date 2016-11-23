module BookKeeping
  VERSION = 3
end

class School
  attr_writer :stud_grade
@stud_grade = {}
  def students(grade)
    stud_grade.each {|g,name| return name if g == grade }
  end

  def add(name,grade)
stud_grade[grade] = name
  end

end
