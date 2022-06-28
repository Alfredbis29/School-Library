require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

class App
  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  def list_books
    @list_items.show_books_list(@books)
  end

  def list_persons
    @list_items.show_persons_list(@persons)
  end

  def create_student(age, name)
    @persons << Person.new.create_student(age, name)
  end

  def create_teacher(age, name)
    @persons << Person.new.create_teacher(age, name)
  end

  def create_person
    @persons << Person.new.create_person
  end

  def create_book
    @books << Book.new.create_book
  end

  def create_rental
    @rentals << Rental.new.create_rental(list_books, list_persons, @persons, @books)
  end

  def list_rentals
    @list_items.show_rentals_list(@rentals, @persons)
  end
end
