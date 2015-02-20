module Refactoring
  module Chapter8OrganisingData
    class Performance
      attr_accessor :name
      attr_writer :wins

      def initialize(name = '', wins = '0')
        @name   = name
        @wins   = wins
        @values = []
      end

      def wins
        @wins.to_i
      end

      def [](index)
        @values[index]
      end

      def []=(index, value)
        @values[index] = value
      end

      deprecate :[], :[]=
    end
  end
end
