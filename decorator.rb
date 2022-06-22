require_relative './nameable'
class Decorator < Nameable
  def initialize(nameable = Nameable.name)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
