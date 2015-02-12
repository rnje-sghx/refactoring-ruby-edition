class Refactoring::Chapter6ComposingMethods::Person
  def initialize(name)
    @name = name
  end

  def print_owing(amount)
    print_banner
    print_details(amount)
  end

  def print_details(amount)
    puts "name:   #{@name}"
    puts "amount: #{amount}"
  end

  def print_banner
    puts '*******************'
  end
end
