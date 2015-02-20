module Refactoring
  module Chapter7MovingFeatures
    class Order
      attr_accessor :customer

      def initialize(customer)
        @customer = customer
      end
    end
  end
end
