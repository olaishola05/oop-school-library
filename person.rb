require_relative './interface'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super()
  end

  def can_use_services?
    true if age >= 18 or @parent_permission
  end

  def correct_name
    name
  end

  private

  def of_age?
    true if age >= 18
    false if age < 18
  end
end

ola = Person.new(17, 'maximilianus')
puts ola.correct_name
capitalizedPerson = CapitalizeDecorator.new(ola)
puts capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.correct_name
