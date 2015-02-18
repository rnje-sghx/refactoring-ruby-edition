module Refactoring
  module Chapter7MovingFeatures
    class Department
      attr_reader :manager

      def initialize(manager = nil)
        @manager = manager
      end
    end
  end
end

