require './spec_helper'

describe Book do
  context 'when testing the Book class' do
    before(:each) do
        @book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
        @person_1 = Person.new(18, 'John Doe', parent_permission: false)
        @person_2 = Person.new(18, 'Jane Doe', parent_permission: true)
       end
    
       describe '#new' do
        it 'takes two parameters and returns a Book object' do
            expect(@book).to be_an_instance_of Book
        end
       end
    
       it 'should have a title' do
        expect(@book.title).to eql('The Great Gatsby')
       end
    
       it 'should have an author' do
        expect(@book.author).to eql('F. Scott Fitzgerald')
       end

       it 'should have a rental' do
        expect(@book.rental).to be_an_instance_of Array
       end

       it 'testing the add_rental method to have lenght of 2' do
        @book.add_rental(@person_1, '01/01/2020')
        @book.add_rental(@person_2, '01/05/2020')
        expect(@book.rental.length).to eql(2)
       end
  end
end