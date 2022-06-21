class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission = true)
    @age = age
    @name = name
    @id = rand(1..100)
    @parent_permission = parent_permission
  end

  def can_use_services
    if of_age? || parent_permission
      true
    else
      false
    end
  end

  private

  def of_age
    @age >= 18
  end
end
