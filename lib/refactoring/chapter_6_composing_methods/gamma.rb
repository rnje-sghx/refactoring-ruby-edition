class Refactoring::Chapter6ComposingMethods::Gamma
  attr_reader :input_val, :account, :year_to_date, :quantity, :important_value1, :important_value3, :important_value2

  def initialize(account, input_val, quantity, year_to_date)
    @account      = account
    @input_val    = input_val
    @quantity     = quantity
    @year_to_date = year_to_date
  end

  def compute
    @important_value1 = (input_val * quantity) + delta
    @important_value2 = (input_val * year_to_date) + 100
    important_thing
    @important_value3 = important_value2 * 7
    # and so on.
    @important_value3 - 2 * important_value1
  end

  def important_thing
    if (year_to_date - important_value1) > 100
      @important_value2 -= 20
    end
  end
end
