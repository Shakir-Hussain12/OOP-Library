class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permission: false)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if of_age?

    false
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end
end

person = Person.new(23, 'Shakir')

puts "Person : #{person.name}"
puts "Age : #{person.age}"
puts "Use Services? : #{person.can_use_services?}"
puts
