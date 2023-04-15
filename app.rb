require './person'
require './book'
require './classroom'
require './student'
require './teacher'
require './rental'

class App
  attr_accessor :persons, :books, :rentals

  def initialize
    @persons = []
    @books = []
    @rentals = []
  end

  def list_books
    @books.each { |book| puts "Title: #{book.title}", "Author: #{book.author}" }
  end

  def list_persons
    @persons.each do |person|
      puts ''
      puts "[#{person.class}]"
      puts "Name: #{person.name}"
      puts "Age: #{person.age}"
      if person.instance_of?(Teacher)
        puts "Specialization: #{person.specialization}"
      else
        puts "Permission: #{person.parent_permission}"
      end
    end
  end

  def create_person
    print '1 to Add a Student OR 2 to Add a Teacher : '
    select_person = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp.to_i
    case select_person
    when 1
      print 'Has parent permission? [Y/N]: '
      permission = gets[0].capitalize
      permission = permission == 'Y'
      @persons << Student.new(nil, age, permission, name)
    when 2
      print 'Specialization: '
      specialization = gets.chomp
      @persons << Teacher.new(age, name, specialization)
    end
    puts 'Person created successfully'
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books << Book.new(title, author)
    puts 'Book created successfully'
  end

  def create_rental
    if @books.length.positive? && persons.length.positive?
      puts 'Select a book from the following list by number : '
      @books.each_with_index { |book, index| puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}" }
      book_number = gets.chomp.to_i
      puts 'Select a person from the following list by number : '
      @persons.each_with_index do |person, index|
        puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
      person_number = gets.chomp.to_i
      print 'Date: '
      date = gets.chomp
      @rentals << Rental.new(date, @books[book_number], @persons[person_number])
      puts 'Rental created successfully'
    else
      puts 'No Books/Persons Found'
    end
  end

  def list_rentals
    if rentals.length.positive?
      puts 'List of IDs : '
      @rentals.each do |rental|
        puts rental.person.id if rental.person.id
      end
      print 'Select an ID to show details : '
      id = gets.chomp.to_i
      puts 'Rentals: '
      @rentals.each do |rental|
        if rental.person.id == id
          puts "Date: #{rental.date}, Book: \"#{rental.book.title} by #{rental.book.author}"
        else
          puts 'No such person exists!!'
        end
      end
    else
      puts 'No Rentals Found'
    end
  end
end
