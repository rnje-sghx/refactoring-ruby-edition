class Refactoring::Chapter6ComposingMethods::Item
  def initialize(quantity, price)
    @quantity = quantity
    @price    = price
  end

  def trade_price
    base_price = @quantity * @price
    if (base_price > 1000)
      base_price * 0.95
    else
      base_price * 0.98
    end
  end
end
