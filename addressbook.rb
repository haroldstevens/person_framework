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

  def load_yaml(file_path)
     f = YAML.load(File.open(file_path))
     f["person"].each do |foo|
       p = Person.new(foo["firstname"], foo["surname"], foo["dob"])
       @entries << p
     end
  end

  def book_list
    puts ""
    puts "Address Book"
    puts "------------"

    @entries.each_with_index do |person, i|
      puts "Entry #{i+1}: #{person.fullname}"
    end
  end

end