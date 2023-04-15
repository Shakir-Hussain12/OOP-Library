require './person'
require './rental'
require './book'
require './classroom'
require './student'

person = Person.new(22, 'maximilianus')
book = Book.new('The First Book', 'Shakir')
Rental.new('03/04/2023', book, person)

puts "Person Rentals : #{person.rentals}"
puts "Book Rentals : #{book.rentals}"

classroom = Classroom.new('2B')
Student.new(classroom, 16, 'Taha')
puts "Classroom Students : #{classroom.students}"
