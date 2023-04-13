require './nameable'

class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if of_age?

    false
  end

  def correct_name
    @name
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end
end
