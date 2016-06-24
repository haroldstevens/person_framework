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

  it 'should load people from a YAML file' do
    book = AddressBook.new
    book.load_yaml('./spec/test_data/people_test_data.yml')

    expect(book.entries.size).to eq 1
    expect(book.entries[0]).to be_a Person
    expect(book.entries[0].fullname).to eq "James Hanson"
    expect(book.entries[0].emails[0]).to eq "hanson.james@hotmail.co.uk"

  end


end

	
