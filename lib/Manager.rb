class Manager
    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        Manager.all.push(self)
        # @employees = []
    end

    # def hire_employee(employee)
    #     @employees.push(employee)
    #     employee.manager = self
    # end
    def self.all
        @@all
    end

    def hire_employee(name, salary)
        employee = Employee.new(name, salary)
        employee.manager = self
        Employee.all.push(employee)
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def self.all_departments
        Manager.all.map {|manager| manager.department}
    end

    def self.average_age
        @@all.reduce(0) {|total_age, manager| total_age += manager.age / @@all.count}
    end
 
end
