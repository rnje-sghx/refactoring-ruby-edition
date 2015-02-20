module Refactoring
  module Chapter7MovingFeatures
    class Performance
      def initialize
        @data = []
      end

      def []=(index, value)
        @data.insert(index, value)
      end

      def [](index)
        @data[index]
      end
    end
  end
end
