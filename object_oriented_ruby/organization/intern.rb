require './employee.rb'
require './reporting'

module Actualize
  class Intern < Employee
    include Reporting 
  end 
end