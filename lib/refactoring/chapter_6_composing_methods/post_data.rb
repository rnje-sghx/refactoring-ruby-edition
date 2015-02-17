class Refactoring::Chapter6ComposingMethods::PostData
  def initialize(post_data)
    self.extend post_data.to_module
  end
end
