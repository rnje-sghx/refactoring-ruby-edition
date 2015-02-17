class Refactoring::Chapter6ComposingMethods::MessageCollector
  instance_methods.each do |meth|
    undef_method meth unless meth =~ /^(__|inspect)/
  end

  def method_missing(sym, *args)
    messages << [sym, args]
    self
  end

  def messages
    @messages ||= []
  end
end
