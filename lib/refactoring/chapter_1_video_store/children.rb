class Refactoring::Chapter1VideoStore::Children
  include Refactoring::Chapter1VideoStore::Price

  def charge(days_rented)
    result = 1.5
    result += (days_rented - 3) * 1.5 if days_rented > 3
    result
  end
end
