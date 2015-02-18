class Refactoring::Chapter7MovingFeatures::TelephoneNumber
  attr_accessor :area_code, :number

  def initialize(area_code, number)
    @area_code = area_code
    @number    = number
  end
end
