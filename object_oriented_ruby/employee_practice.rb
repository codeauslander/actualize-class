class Employee
  # attr_reader :first_name, :last_name, :salary, :active
  # attr_writer :active
  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @salary = hash[:salary]
    @active = hash[:active]
  end
  
  def give_annual_raise
    @salary = @salary * 1.05    
  end
  def first_name
    @first_name    
  end
  def last_name
    @last_name
  end 
  def salary
    @salary
  end
  def active
    @active
  end 
  def anything(active)
    @active = active
    
  end 
  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year"
  end
  def first
    "hello"
  end
  def second
    "Mudder"
    first
  end
end 

hash = {
    first_name: "Bruce",
      last_name:"Wayne",
      salary:7000,
      active:true
}
  
employee_1 = Employee.new(hash )

p employee_1.active
employee_1.anything('this is the false')
p employee_1.active

# employee_1.anything()
