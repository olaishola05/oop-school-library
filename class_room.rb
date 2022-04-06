class ClassRoom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student, label)
    @students.push({ student: student, label: label })
  end
end

new_class_room = ClassRoom.new('Science')
new_class_room.add_student('Max', new_class_room.label)
new_class_room.add_student('Triop', new_class_room.label)
new_class_room.add_student('Ade', new_class_room.label)

puts new_class_room.students

