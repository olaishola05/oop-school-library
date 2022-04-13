require './spec_helper'

describe Book do
   before(:each) do
    @book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
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
end