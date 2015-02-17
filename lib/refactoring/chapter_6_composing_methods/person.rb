class Refactoring::Chapter6ComposingMethods::Person
  def self.attrs_with_empty_predicate(*args)
    attr_accessor *args
    args.each do |attribute|
      define_method "empty_#{attribute}?" do
        self.send(attribute).nil?
      end
    end
  end

  def self.attr_with_default(options)
    options.each_pair do |attribute, default_value|
      eval "define_method #{attribute} do
        @#{attribute} ||= #{default_value}
      end"
    end
  end

  attrs_with_empty_predicate :name, :age

  attr_with_default :emails          => '[]',
                    :employee_number => 'EmployeeNumberGenerator.next'
end
