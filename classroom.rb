class Classroom
  attr_accessor: student
  attr_reader: label

  def initialize(label)
    @label = label
    @student = []
    end
  def add_student(student)
    @students.push(student)
    student.classroom = self.student
  end
end