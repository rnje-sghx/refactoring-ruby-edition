class Refactoring::Chapter6ComposingMethods::PizzaBoy
  def initialize
    @number_of_late_deliveries = 0
  end

  def get_rating
    (@number_of_late_deliveries > 5) ? 2 : 1
  end
end
