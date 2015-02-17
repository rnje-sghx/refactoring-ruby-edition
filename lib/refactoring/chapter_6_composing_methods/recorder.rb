class Refactoring::Chapter6ComposingMethods::Recorder
  instance_methods.each do |meth|
    undef_method meth unless meth =~ /^(__|inspect)/
  end

  def messages
    @messages ||= []
  end

  def method_missing(sym, *args)
    messages << [sym, args]
    self
  end

  def play_for(obj)
    messages.inject(obj) do |result, message|
      result.send message.first, *message.last
    end
  end

  def to_s
    messages.inject([]) do |result, message|
      result << "#{message.first}(args: #{message.last.inspect})"
    end.join('.')
  end
end

# recorder = Recorder.new
# recorder.start("LRMMMMRL")
# recorder.stop("LRMMMMRL")
# recorder.play_for(CommandCenter.new)
