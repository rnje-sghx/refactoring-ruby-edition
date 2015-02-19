module Refactoring
  module Chapter7MovingFeatures
    class ImportedItem < Item
      attr_reader :import_duty

      def initialize(base_price, tax_rate, import_duty)
        super(base_price, tax_rate)
        @import_duty = import_duty
      end

      def tax_rate
        super + import_duty
      end
    end
  end
end
