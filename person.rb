class Person
  attr_accessor :name, :age, :id

  def initialize(id, name = "Unknown", age, parent_permission)
    @id = id
    @name = name
    @age = age
    @parent_permission = true
  end

  def can_use_services?
    if age >= 18 && parent_permission == true
      true
    end
  end


  private

  def is_of_age?
    if age >= 18 true
      false

  end

end
 

testObj = Person.new(1, "John", 18, true)
puts testObj.can_use_services?


