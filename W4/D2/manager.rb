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
      if worker
    end
  end

end

m = Manager.new("alex", "job", 100)
p m.title