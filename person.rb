class Person

  attr_reader :dob, :first_name, :surname, :emails, :phone_no


	def initialize(fname, sname, dob = nil)
    @first_name = fname.capitalize
    @surname = sname.capitalize
    @dob = Date.parse dob if dob

    @emails =[]
    @phone_no =[]
  end

  def fullname
    "#{@first_name} #{@surname}"
  end

  def add_email(e_mail)
    @emails << e_mail
  end

  def add_phone_no(phone_no)
    @phone_no << phone_no
  end

  def remove_email(position)
    @emails.delete_at position
  end

  def remove_phone_no(position)
    @phone_no.delete_at position
  end

end