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

  def frequent_renter_points
    frequent_renter_points += 1
    # add bonus for a two day new release rental
    if self.movie.price_code == Movie.NEW_RELEASE && self.days_rented > 1
      frequent_renter_points += 1
    end
    frequent_renter_points
  end
end
