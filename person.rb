require_relative './interface'
require_relative './book'
require_relative './rental'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rental

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def add_rental(book, date)
    @rental.push(Rental.new(date, book, self)) unless @rental.include?(Rental.new(date, book, self))
  end

  def can_use_services?
    true if age >= 18 || @parent_permission
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
