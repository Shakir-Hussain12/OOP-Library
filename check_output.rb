require './person'
require './trim_decorator'
require './cap_decorator'

person = Person.new(22, 'maximilianus')
puts "Original Input :  #{person.correct_name}"
capitalized_person = Capitalize.new(person)
puts "Capitalized Name : #{capitalized_person.correct_name}"
capitalized_trimmed_person = Trim.new(capitalized_person)
puts "Trimmed Name : #{capitalized_trimmed_person.correct_name}"
