class Refactoring::Chapter1VideoStore::Rental
  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end

  def charge
    self.movie.charge(self.days_rented)
  end

  def frequent_renter_points
    self.movie.frequent_renter_points(self.days_rented)
  end
end
