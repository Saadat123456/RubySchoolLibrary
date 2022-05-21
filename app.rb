require './book'
require './teacher'
require'./student'
require './rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  #List all books.

  def all_books
    @books
  end

  #List all people.

  def all_people
    @people
  end

  #Create a person (teacher or student, not a plain Person).

  def create_person(age, name, specialization: flase, classroom: false, parent_permision: true)
    person = Teacher.new(age, specialization, name) if specialization
    person = Student.new(age, classroom, name, parent_permision) if classroom
    @people.push(person)
  end

  #Create a book.

  def create_a_book(title, author)
    new_book = Book.new(title, author)
    @books.push(new_book)
  end

  #Create a rental.

  def create_a_rental(date, book, person)
    rental = Rental.new(date, book, person)
    @rentals.push(rental)
  end

  #List all rentals for a given person id. 
  def all_rentals(id)
    person = ''
    @people.each do |p|
      person = p if p.id == id
    end
    person.rentals
  end
end