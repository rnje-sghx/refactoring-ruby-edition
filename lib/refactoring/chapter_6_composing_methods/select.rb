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

  def initialized?
    true
  end

  def resize
    1
  end

  def browser
    %w(Firefox IE Chrome)
  end

  def platform
    %w(Windows Mac Linux)
  end

  def render
    if (platform.upcase.index('MAC') && browser.upcase.index('IE') && initialized? && resize > 0)
      # renders
    end
  end
end
