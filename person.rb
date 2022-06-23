require './nameable'
require './book'
require './rental'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'unknown', parent_permision: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permision = parent_permision
    @rentals = []
  end

  def correct_name
    @name
  end

  def can_use_services?
    if of_age? || parent_permision
      true
    else
      false
    end
  end

  def add_rental(person, date)
    Rental.new(date, self, book)
  end

  private

  def of_age?
    @age >= 18
  end
end
