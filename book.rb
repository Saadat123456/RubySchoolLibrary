require './rental'

# class book
class Book
  attr_accessor :title, :author, :rentals

  @@TotalBooks = []

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    @@TotalBooks.push(self)
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end
