require_relative './person'
require_relative './book'
require_relative './rental'
require_relative './student'
require_relative './teacher'
require_relative './class_room'

person = Person.new(18, 'John', parent_permission: true)
book = Book.new('Harry Potter', 'JK Rowling')
person.add_rental(book, '01/01/2020')
book.add_rental(person, '01/01/2020')

puts book.rental.first.person.name
