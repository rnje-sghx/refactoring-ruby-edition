class Module
  def deprecate(method_name, &block)
    module_eval <<-END
    alias_method :deprecated_#{method_name}, :#{method_name}
    def #{method_name}(*args, &block)
      $stderr.puts "Warning: calling deprecated method\
      #{self}.#{method_name}. This method will be removed in a future release."
      deprecated_#{method_name}(*args, &block)
      end
    END
  end
end
