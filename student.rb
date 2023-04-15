require './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'unknown', parent_permission: true)
    super(age, name)
    @classroom = classroom
    classroom.students << self
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
