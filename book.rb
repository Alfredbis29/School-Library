class Book
  attr_accessor :title, :author
  attr_reader :rental
 def initialize(title, author)
   @title = title
   @author = author
   @label = []
 end

 def add_rental(rentals)
   @rentals.push(rentals)
   rental.book = self.rental

