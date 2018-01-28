# employee_1 = ["Bruce", "Wayne", 7000, true]
# employee_2 = ["Diana", "Prince", 8000, true]
# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1 [2].to_s + " a year."
# puts "#{employee_2[0]} #{employee_2[1]} makes #{employee_2[2]} a year."


#######################################################

# employee_1 = {"first_name" => "Bruce", "last_name" => "Wayne", "salary" => 7000, "active" => true}

# employee_2 = {"first_name" => "Diana", "last_name" => "Prince", "salary" => 8000, "active" => true}

# puts "#{employee_1["first_name"]} #{employee_1["last_name"]} makes #{employee_1["salary"]}"

# puts "#{employee_2["first_name"]} #{employee_2["last_name"]} makes #{employee_2["salary"]}"

#######################################################

# employee_1 = {:first_name => "Bruce", :last_name => "Wayne", :salary => 7000, :active => true}

# employee_2 = {first_name: "Diana", last_name: "Prince", salary: 8000, active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]}"

# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]}"

#######################################################

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end
  
  def give_annual_raise
    @salary = @salary * 1.05    
  end
  # def first_name
  #   @first_name    
  # end
  # def last_name
  #   @last_name
  # end 
  # def salary
  #   @salary
  # end
  # def active
  #   @active
  # end 
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

  
  # def active= (new_active)
  #   @active = new_active
  # end 

end 

employee_1 = Employee.new(
    
      first_name: "Bruce",
      last_name:"Wayne",
      salary:7000,
      active:true
    
  )

employee_2 = Employee.new(
  first_name: "Diana",
  last_name:"Prince",
  salary:8000,
  active:true
  )

p employee_1
# x = 5
# p '#{x}'
# p "hammy"
# puts "hammy"
employee_1.print_info
employee_2.print_info
employee_2.give_annual_raise
employee_2.print_info

p employee_1.first
p employee_2.second

p employee_1.active
employee_1.active = false 
p employee_1.active

class Manager < Employee

  def initialize(options) 
    super
    @employees = options[:employees]
  end

  def send_report 
    puts "Sending Email.."
    #code that sends email
    puts "Email sent."
  end 
 
end 

manager = Manager.new(
    first_name:'Clark',
    last_name:'Kent',
    salary:100000,
    active:true,
    employees:[employee_1,employee_2]
  )

manager.print_info
manager.send_report
p manager