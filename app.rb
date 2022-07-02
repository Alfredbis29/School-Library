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
    puts "\nID of the Person: "
    list_persons
    ui_input if @persons.length.zero?
    id = gets.chomp.to_i
    puts 'List of Rentals: '
    if @rentals.length.zero?
      puts 'There is no rental in the list. Please add a rental!'
    else
      @rentals.each do |rental|
        puts "Date: #{rental.date}. Book: '#{rental.book.title}' by #{rental.book.author}" if rental.person.id == id
      end
    end
    puts "\n"
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def handle_input(option)
    case option
    when
      list_books
    when 2
      list_persons
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rentals
    when 7
      puts 'Thank you for using School Library App'
      exit
    else
      puts 'Please select an option'
    end
    ui_input
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def ui_input
    puts 'Please choose an option by entering a number:'
    puts '1. list all books'
    puts '2. list all people'
    puts '3. create a person (teacher or student)'
    puts '4. create a bookW'
    puts '5. create a rental'
    puts '6. list all rentals for a given person id'
    puts '7. Exit'

    option = gets.chomp.to_i
    handle_input(option)
  end
end
