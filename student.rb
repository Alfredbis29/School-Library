require '/.person.rb'

class student < person
  def initialize(name, age, parent_permission)
    super(age, name, parent_permission)
    @class_room = classroom.new
  end
end

def play_hooky
  "¯\(ツ)/¯"
 end
end
