module Refactoring
  module Chapter8OrganisingData
    class Order
      def initialize(customer_name)
        @customer = Customer.with_name(customer_name)
      end

      def customer_name
        @customer.name
      end

      def customer=(customer_name)
        @customer = Customer.with_name(customer_name)
      end
    end
  end
end
