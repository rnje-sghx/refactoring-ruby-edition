class Decorator
  def initialize(subject)
    subject.public_methods(false).each do |meth|
      (class << self; self; end).class_eval do
        define_method meth do |*args|
          subject.send meth, *args
        end
      end
    end
  end
end
