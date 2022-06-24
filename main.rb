require './app'

class Main
  def initialize
    @app = App.new
  end

  def run
    puts "Welcome to School Library App\n\n"
    @app.ui_input
  end

  def main
    run
  end
end

Main.new.main
