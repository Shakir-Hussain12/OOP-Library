require './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student = Student.new('2B', 17, 'Taha')

puts "Student : #{student.name}"
puts "Classroom : #{student.classroom}"
puts "Use Services? : #{student.can_use_services?}"
puts student.play_hooky
