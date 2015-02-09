class Refactoring::Chapter1VideoStore::Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDREN = 2

  attr_reader :title, :price_code

  def initialize(title, price_code)
    @title, @price_code = title, price_code
  end

  def price_code=(value)
    @price_code = value
    @price = case self.price_code
               when REGULAR then
                 RegularPrice.new
               when NEW_RELEASE then
                 NewReleasePrice.new
               when CHILDREN then
                 Children.new
             end
  end

  def charge(days_rented)
    @price.charge(days_rented)
  end

  def frequent_renter_points(days_rented)
    @price.frequent_renter_points(days_rented)
  end
end
