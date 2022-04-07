module Enumerables
  def list_all_books
    puts 'List all books'
    puts '----------------'
    @books.each { |book| puts "#{book.title}, #{book.author}" }
  end
end
