class Refactoring::Chapter6ComposingMethods::Select
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
    is_mac_os     = platform.upcase.index('MAC')
    is_ie_browser = browser.upcase.index('IE')
    was_resized   = resize > 0
    if (is_mac_os && is_ie_browser && initialized? && was_resized)
      # renders
    end
  end
end
