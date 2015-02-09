class Refactoring::Chapter1VideoStore::Rental
  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end

  def charge
    result = 0
    case self.movie.price_code
      when Movie::REGULAR
        result += 2
        result += (self.days_rented - 2) * 1.5 if self.days_rented > 2
      when Movie::NEW_RELEASE
        result += self.days_rented * 3
      when Movie::CHILDRENS
        result += 1.5
        result += (self.days_rented - 3) * 1.5 if self.days_rented > 3
    end
    result
  end
end
