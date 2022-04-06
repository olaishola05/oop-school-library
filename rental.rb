class Rental
  attr_reader :person, :book
  attr_accessor :date

  def initialize(date, person, book)
    @date = date

    @person = person
    person.rental.push(self)

    @book = book
    book.rental.push(self)
  end
end
