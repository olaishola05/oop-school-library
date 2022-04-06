class ClassRoom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student, label)
    @students.push({ student: student, label: label })
    student.classroom = self
  end
end
