module Refactoring
  module Chapter8OrganisingData
    class Customer
      private_class_method :new

      attr_reader :name

      INSTANCES = {}

      def self.with_name(name)
        INSTANCES[name]
      end

      def self.load_customers
        new('Lemon Car Hire').store
        new('Associated Coffee Machines').store
        new('Bilston Gasworks').store
      end

      def initialize(name)
        @name = name
      end

      def store
        INSTANCES[name] = self
      end
    end
  end
end
