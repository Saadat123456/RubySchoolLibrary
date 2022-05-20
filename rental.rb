# Class rental
class Rental
  attr_accessor :date, :book, :person

  def initialize(date)
    @date = date
    @book = ''
    @person = ''
  end

  def add_book(book)
    book.add_rental(self)
  end

  def add_person(person)
    person.add_rental(self)
  end
end
