class Refactoring::Chapter6ComposingMethods::PostData
  def initialize(post_data)
    (class << self; self; end).class_eval do
      post_data.each_pair do |key, value|
        define_method key.to_sym do
          value
        end
      end
    end
  end
end
