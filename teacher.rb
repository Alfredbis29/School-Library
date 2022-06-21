require_relative './Person'
class Teacher < Person
  attr_accessor :age, :specialization, :name

  def initialize(age:, specialization:, name: 'unknown', parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
