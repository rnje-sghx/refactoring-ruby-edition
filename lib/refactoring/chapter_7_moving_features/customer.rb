module Refactoring
  module Chapter7MovingFeatures
    class Customer
      private_class_method :new

      attr_reader :name

      def self.create(name)
        new(name)
      end

      def initialize(name)
        @name = name
      end
    end
  end
end
