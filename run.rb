require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("Lia", "HR", 40)
manager2 = Manager.new("Mike", "Sales", 50)

employee1 = Employee.new("Jon", 50000)
employee2 = Employee.new("Ada", 50500)
employee3 = Employee.new("Grace", 70000)

manager1.hire_employee("Jon", 50000)
manager2.hire_employee("Ada", 50500)
manager2.hire_employee("Grace", 70000)

employee1.manager = manager1
employee2.manager = manager2
employee3.manager = manager2


binding.pry
puts "done"
