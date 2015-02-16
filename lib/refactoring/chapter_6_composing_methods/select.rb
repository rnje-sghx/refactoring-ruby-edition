class Select
  attr_reader :options

  def self.with_option(option)
    self.new(option)
  end

  def initialize(*options)
    @options = options
  end

  def add_option(option)
    @options << option
  end
end
