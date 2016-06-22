require 'spec_helper'

describe "Person class" do

	it 'should store and return personal information' do
    person = Person.new("joe", "bloggs", "1 Jan 1990")

    expect(person.dob).to eq Date.new(1990,1,1) 
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"
  end

  it 'should have an optional dob' do
    person = Person.new("joe", "bloggs")
    expect(person.dob).to be_nil
  end

  it 'should store and return emails in an array' do
    person = Person.new("joe", "bloggs", "1 Jan 1990")

    expect(person.emails).to eq []
    person.add_email "joe@foo.com"
    person.add_email "joe.bloggs@work.com"

    expect(person.emails).to eq ["joe@foo.com", "joe.bloggs@work.com"]
  end

  it 'should store and return phone numbers in an array' do
    person = Person.new("joe", "bloggs", "1 Jan 1990")

    expect(person.phone_no).to eq []
    person.add_phone_no "07982635473"
    person.add_phone_no "07853648282"

    expect(person.phone_no).to eq ["07982635473", "07853648282"]
  end

end