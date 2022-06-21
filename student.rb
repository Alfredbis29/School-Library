require_relative './person'
class Student < person
  def initialize(name, age, parent_permission)
    super(age, name, parent_permission)
    @class_room = classroom
  end
end

def play_hooky
  "¯\(ツ)/¯"
end
