require_relative "employee"

class Manager

  def initialize(name)
    @name = name
    @employees = []
    @boss = nil
  end

end