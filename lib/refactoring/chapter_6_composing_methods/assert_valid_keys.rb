module Refactoring::Chapter6ComposingMethods::AssertValidKeys
  def assert_valid_keys(*valid_keys)
    unknown_keys = keys - [valid_keys].flatten
    if unknown_keys.any?
      raise(ArgumentError, "Unknown key(s): #{unknown_keys.join(', ')}")
    end
  end
end

Hash.send(:include, Refactoring::Chapter6ComposingMethods::AssertValidKeys)
