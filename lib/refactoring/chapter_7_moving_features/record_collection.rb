module Refactoring
  module Chapter7MovingFeatures
    class RecordCollection
      extend Forwardable

      def_delegator :@records, :[], :record_number
      def_delegators :@records, :size, :<<, :map

      def initialize(records = [])
        @records = []
      end
    end
  end
end
