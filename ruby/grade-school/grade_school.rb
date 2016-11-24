module BookKeeping
  VERSION = 3
end

class School

  def initialize
    @stud_grade = Hash.new { |hash, key| hash[key] = [] }
  end

  def students(grade)
    @stud_grade[grade]
  end

  def add(name,grade)
    @stud_grade[grade] << name
    @stud_grade[grade].sort!
  end

  def students_by_grade
    @stud_grade.keys.sort.map { |grade| grade_stud_list(grade) }
  end

  def grade_stud_list(grade)
    { grade: grade, students: students(grade) }
  end

end
