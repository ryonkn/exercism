class School
  attr_reader :students_by_grade

  def initialize
    @students_by_grade = []
  end

  def students(grade)
    grade = @students_by_grade.find { _1[:grade] == grade}
    grade.nil? ? [] : grade[:students]
  end

  def add(name, grade)
    students = @students_by_grade.find { _1[:grade] == grade}&.dig(:students)

    if students.nil?
      @students_by_grade.push({grade: grade, students: [name]})
      @students_by_grade.sort! { _1[:grade] <=> _2[:grade] }
    else
      students.push(name)
      students.sort!
    end
  end

end
