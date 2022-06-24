require './app'

class Main
  def initialize
    @app = App.new
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  # def handle_input(option)
  #   case option
  #   when 1
  #     @app.list_books
  #   when 2
  #     @app.list_persons
  #   when 3
  #     @app.create_person
  #   when 4
  #     @app.create_book
  #   when 5
  #     @app.create_rental
  #   when 6
  #     @app.list_rentals
  #   when 7
  #     puts 'Thank you for using School Library App'
  #     exit
  #   else
  #     puts 'Please select an option'
  #   end
  #   @app.ui_input
  # end

  # rubocop:enable Metrics/CyclomaticComplexity

  def run
    puts "Welcome to School Library App\n\n"
    @app.ui_input
  end

  def main
    run
  end
end

Main.new.main
