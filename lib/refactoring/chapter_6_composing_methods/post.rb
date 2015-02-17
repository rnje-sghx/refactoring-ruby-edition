class Refactoring::Chapter6ComposingMethods::Post
  def self.states(*states)
    states.each do |state|
      define_method state do
        self.state = state
      end
    end
  end

  states :error, :failure, :success
end
