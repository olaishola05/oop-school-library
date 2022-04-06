require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom)
    @classroom = classroom
    super
  end

  def add_classroom(classroom)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

# science = Student.new('Science')
