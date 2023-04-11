require './person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, name, specialization)
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher = Teacher.new(15, 'Mike', 'Maths')
puts "Teacher: #{teacher.name}"
puts "Specialization : #{teacher.specialization}"
puts "Use Services? : #{teacher.can_use_services?}"
