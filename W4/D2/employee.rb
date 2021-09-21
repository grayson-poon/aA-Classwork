
class Employee

  attr_reader :name, :title, :salary, :boss, :bonus

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @boss = nil
  end

  def set_bonus(multiplier)
    @bonus = salary * multiplier
  end

  def boss=(boss_instance)
    if @boss.nil?
      boss = boss_instance.name
    else

  end

end

e = Employee.new("a", "yes", 100)
p e.set_bonus(5)
p e.bonus