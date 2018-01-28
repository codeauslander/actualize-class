module Reporting
    def send_report
    puts 'Sending Email...'
    puts 'Email sent.'
    
  end
end 

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active, :salary

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  def same_manager_employee
    p "hello"
  end
end

employee_1 = Employee.new(
                          first_name: "Bruce", 
                          last_name: "Wayne", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Diana", 
                          last_name: "Prince", 
                          salary: 80000, 
                          active: true
                          )
# employee_2.print_info
# p employee_1.active
# employee_1.active = false
# p employee_1.active

class Manager < Employee
  include Reporting
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending Email..."
    #code that sends email
    puts "Email sent."
  end

  def give_all_raises
    @employees.each do |employee|
      
      employee.give_annual_raise
    
    end
  end 

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end 
  end

  def same_manager_employee
    p "hi"
  end
end

manager = Manager.new(
                      first_name: "Clark",
                      last_name: "Kent",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
manager.print_info
manager.give_all_raises
manager.fire_all_employees
manager.same_manager_employee
employee_1.same_manager_employee


class Intern < Employee
  include Reporting 
end 

intern = Intern.new(
    first_name:"Jimy",
    last_name: 'Olsen',
    salary:3000,
    active:true
  )

intern.print_info
intern.send_report