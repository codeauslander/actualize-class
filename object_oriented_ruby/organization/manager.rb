require './employee.rb'
require './reporting'

module Actualize
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
end