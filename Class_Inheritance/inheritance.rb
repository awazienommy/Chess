class Employee
  attr_reader :name, :title, :salary, :boss
  def initialize (name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    bonus = self.salary * multiplier
  end

end

class Manager < Employee
  attr_accessor :employees
  def initialize(name, title, salary, boss)
    super
    @employees = []
  end

  def bonus(multiplier)
    employees_salary = 0
    @employees.each do |empl_inst|
      employees_salary += empl_inst.salary
    end
    manager_bonus = employees_salary * multiplier
  end
end

#Questions: Do we need a founder class?
#Is there any special logic to automate @employees to add once employee add's boss?

