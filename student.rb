require_relative './person'

class Student < Person
  def initialize(classroom)
    @classroom = classroom
    super
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
