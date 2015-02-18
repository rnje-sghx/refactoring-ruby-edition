module Refactoring
  module Chapter7MovingFeatures
    class Person
      attr_reader :name
      attr_accessor :office_area_code, :office_number

      def initialize(name = '', office_area_code = '', office_number = '', department = Department.new)
        @name             = name
        @office_area_code = office_area_code
        @office_number    = office_number
        @department       = department
      end

      def telephone_number
        '(' + @office_area_code + ') ' + @office_number
      end

      def manager
        @department.manager
      end
    end
  end
end
