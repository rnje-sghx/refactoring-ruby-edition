class Refactoring::Chapter6ComposingMethods::Item
  def initialize(quantity, price)
    @quantity = quantity
    @price    = price
  end

  def price
    base_price * discount_factor
  end

  def discount_factor
    (base_price > 1000) ? 0.95 : 0.98
  end

  def base_price
    @quantity * @price
  end
end
