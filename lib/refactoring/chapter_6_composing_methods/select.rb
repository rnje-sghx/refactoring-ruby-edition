class Select
  attr_reader :options

  def initialize(*options)
    @options = options
  end

  def add_option(option)
    @options << option
  end
end
