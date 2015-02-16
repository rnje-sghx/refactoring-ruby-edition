class Select
  attr_reader :options

  def self.with_option(option)
    self.new(option)
  end

  def initialize(*options)
    @options = options
  end

  def and(option)
    @options << option
    self
  end
end
