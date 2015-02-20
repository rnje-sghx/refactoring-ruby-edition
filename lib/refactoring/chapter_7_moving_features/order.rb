module Refactoring
  module Chapter7MovingFeatures
    class Order
      def initialize(customer)
        @customer = Customer.new(customer)
      end

      def customer
        @customer.name
      end

      def customer=(name)
        @customer = Customer.new(name)
      end
    end
  end
end
