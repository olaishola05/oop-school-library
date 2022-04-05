require_relative './interface'

class Person < Nameable
  attr_accessor :name, :age, :id

  def initialize(age, parent_permission: true, name = "Unknown")
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
    super
  end

  def can_use_services?
    true if age >= 18 or @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    true if age >= 18
    false if age < 18
  end
end

ola = Person.new(17, "Ola")
puts ola.correct_name
