class Refactoring::Chapter7MovingFeatures::Person
  attr_reader :name

  def initialize(name = '', office_area_code = '', office_number = '')
    @name                    = name
    @office_telephone_number = TelephoneNumber.new(office_area_code, office_number)
  end

  def office_area_code
    @office_telephone_number.area_code
  end

  def office_area_code=(area_code)
    @office_telephone_number.area_code = area_code
  end

  def office_number
    @office_telephone_number.number
  end

  def office_number=(number)
    @office_telephone_number.number = number
  end

  def telephone_number
    '(' + office_area_code + ') ' + office_number
  end
end
