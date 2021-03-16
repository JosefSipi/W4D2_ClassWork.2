class Employee
    
    attr_accessor :name, :title, :salary, :boss

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus_multiplier(multiplier)

    end


end


jess = Manager.new("jess", "Bosslady", 100000)

hocus = Employee.new("Hocus", "cat", 1000, jess)
pocus = Employee.new("Pocus", "cat2", 1000, jess)

jess.add_employee(hocus)
jess.add_employee(pocus)

p jess
p hocus
p pocus

