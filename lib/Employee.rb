class Employee
    attr_accessor :name, :salary, :manager 

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @manager = manager
        save
    end

    def save
        Employee.all.push(self)
    end

    def self.all
        @@all
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(amount)
        Employee.all.select {|employee| employee.salary > amount}
    end

    def self.find_by_department(department)
        Employee.all.find {|employee| employee.manager.department == department}
    end

    def tax_bracket
        Employee.all.select do |employee| 
            (employee.salary - self.salary).abs <= 1000 
        end     
    end

end
