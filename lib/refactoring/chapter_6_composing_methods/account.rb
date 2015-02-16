class Refactoring::Chapter6ComposingMethods::Account
  def gamma(input_val, quantity, year_to_date)
    Refactoring::Chapter6ComposingMethods::Gamma.new(self, input_val, quantity, year_to_date).compute
  end
end
