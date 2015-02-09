class Refactoring::Chapter1VideoStore::RegularPrice
  include Refactoring::Chapter1VideoStore::Price

  def charge(days_rented)
    result = 2
    result += (days_rented - 2) * 1.5 if days_rented > 2
    result
  end
end
