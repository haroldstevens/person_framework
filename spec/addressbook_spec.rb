require 'spec_helper'

describe "AddressBook class" do 

	it 'should add people into the address book' do
    person = Person.new("Joe", "Bloggs", "1 Jan 1990")
    person1 = Person.new("Andy", "Nother", "2 Jan 1995")
    book = AddressBook.new
    book.add person
    book.add person1

    expect(book.entries.length).to eq 2
  end


end

	
