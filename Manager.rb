require_relative 'Employee'

class Manager < Employee

    attr_accessor :employees

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def add_employee(employee_ins)    # instance of Employee
        self.employees << employee_ins
    end
    



end

