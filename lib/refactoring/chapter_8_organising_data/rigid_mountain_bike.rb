module Refactoring
  module Chapter8OrganisingData
    class RigidMountainBike
      include MountainBike

      def off_road_ability
        @tire_width * TIRE_WIDTH_FACTOR
      end

      def price
        (1 + @commision) * @base_price
      end
    end
  end
end
