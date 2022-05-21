require './nameable'

# Parent class for teacher and student
class Person < Nameable
  attr_reader :id
  attr_accessor :age, :name, :rentals

  def initialize(age, name = 'Unknown', parent_permision: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @rentals = []
    _parent_permision = parent_permision
  end

  def can_use_services?
    of_age? || _parent_permision
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    age >= 18
  end
end
