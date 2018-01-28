
require './employee.rb'
require './manager.rb'
require './intern.rb'
require './reporting.rb'


employee_1 = Actualize::Employee.new(
                          first_name: "Bruce", 
                          last_name: "Wayne", 
                          salary: 70000, 
                          active: true
                          )


employee_2 = Actualize::Employee.new(
                          first_name: "Diana", 
                          last_name: "Prince", 
                          salary: 80000, 
                          active: true
                          )

manager = Actualize::Manager.new(
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

intern = Actualize::Intern.new(
    first_name:"Jimy",
    last_name: 'Olsen',
    salary:3000,
    active:true
  )

intern.print_info
intern.send_report