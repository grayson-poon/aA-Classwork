require_relative "employee"

class Manager < Employee

  attr_reader :employees

  def initialize(name, title, salary)
    super(name, title, salary)
    @employees = []
  end

  def set_bonus(multiplier)
    all_employees = [] + employees
    all_employees.each do |worker|
      if worker.title.downcase == "manager"
        worker.employees.each do |sub_worker|
          all_employees.push(sub_worker)
        end
      end
    end

    sum = 0
    all_employees.each { |employee| sum += employee.salary }
    
    return sum * multiplier
  end

end

e = Employee.new("a", "yes", 100)
f = Employee.new("f", "yes", 200)
g = Employee.new("g", "yes", 300)

n = Manager.new("alex", "manager", 100)
m = Manager.new("alex", "manager", 100)

g.boss = n
f.boss = n
e.boss = n

n.boss = m

p m.set_bonus(2)
# p m.set_bonus(5)
# p m.employees