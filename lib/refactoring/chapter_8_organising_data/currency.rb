module Refactoring
  module Chapter8OrganisingData
    class Currency
      attr_reader :code

      def initialize(code)
        @code = code
      end

      def eql?(other)
        self == other
      end

      def ==(other)
        other.equal?(self) || (other.instance_of?(self.class)) && other.code == self.code
      end

      def hash
        code.hash
      end
    end
  end
end
