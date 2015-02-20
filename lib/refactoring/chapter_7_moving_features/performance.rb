module Refactoring
  module Chapter7MovingFeatures
    class Performance
      attr_accessor :name
      attr_writer :wins

      def initialize(name = '', wins = '0')
        @name = name
        @wins = wins
      end

      def wins
        @wins.to_i
      end
    end
  end
end
