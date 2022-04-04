class Person
  attr_accessor :name, :age, :id

  def initialize(age, parent_permission: true, name: 'Unknown')
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    true if age >= 18 && @parent_permission
  end

  private

  def of_age?
    true if age >= 18
    false
  end
end

ola = Person.new(17)
puts ola.can_use_services?
