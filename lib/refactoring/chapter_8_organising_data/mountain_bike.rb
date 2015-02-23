module Refactoring
  module Chapter8OrganisingData
    module MountainBike
      def initialize(params)
        params.each { |key, value| instance_variable_set "@#{key}", value }
      end

      def wheel_circumference
        Math::PI * (@wheel_diameter + @tire_diameter)
      end
    end
  end
end

