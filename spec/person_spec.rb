require './spec_helper'

describe Person do
    context 'Test class Person' do
        before(:each) do
            @person = Person.new(55, 'Joe Cole', parent_permission: false)
            @book = Book.new('The Great Albions', 'Random Dude')
        end

        describe '#new' do
            it 'takes three parameters and returns a Person object' do
                expect(@person).to be_an_instance_of Person
            end
           end
    end
end