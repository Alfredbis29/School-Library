class Book
  attr_accessor :title, :author
  attr_reader :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(date, person)
    @rentals.push(Rental.new(date, self, person))
    rental.book = self
  end
end
