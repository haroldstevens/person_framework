class AddressBook 

  attr_reader :entries

  def initialize
    @entries = []
  end

  def add(person)
    if person.is_a? Person
      @entries << person
    end
  end

end