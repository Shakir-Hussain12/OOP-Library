require './nameable'

class Person
  attr_reader :id, :rentals, :parent_permission
  attr_accessor :name, :age

  def initialize(age, parent_permission, name = 'unknown')
    @id = Random.rand(0..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    return true if of_age?

    false
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end
end
