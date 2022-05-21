require './person'

# Student class that extends from person
class Student < Person
  attr_reader :classroom

  def initialize(age, name, parent_permision, classroom)
    super(age, name, parent_permision: parent_permision)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
