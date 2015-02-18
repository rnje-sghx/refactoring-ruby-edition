class Refactoring::Chapter7MovingFeatures::Person
  attr_reader :name, :office_telephone

  def initialize(name = '', office_area_code = '', office_number = '')
    @name             = name
    @office_telephone = TelephoneNumber.new(office_area_code, office_number)
  end

  def telephone_number
    @office_telephone.telephone_number
  end
end
