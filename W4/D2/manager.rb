require_relative "employee"

class Manager

  attr_reader :name, :employee, :boss

  def initialize(name)
    @name = name
    @employees = []
    @boss = nil
  end

end