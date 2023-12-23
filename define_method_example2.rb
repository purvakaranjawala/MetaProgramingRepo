class UserDetails
  attr_accessor :name, :lastname, :address, :designation, :contactnumber

  def initialize(name, lastname, address, designation, contactnumber)
    @name = name
    @lastname = lastname
    @address = address
    @designation = designation
    @contactnumber = contactnumber
  end

  def john_details
    puts "Full name is #{name} #{lastname}.
      He/she lives at #{address}.
      Designation is #{designation}
      Contact at #{contactnumber}"
  end

  # def self.create_user_details(name)
  #   define_method("#{name}_details") do
  #     puts "Full name is #{name} #{lastname}.
  #     He/she lives at #{address}.
  #     Designation is #{designation}
  #     Contact at #{contactnumber}"
  #   end
  # end
end

j = UserDetails.new('john', 'michal', '74 street lane', 'manager', '123456')

# UserDetails.create_user_details(j.name)

j.john_details
