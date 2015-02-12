class Refactoring::Chapter6ComposingMethods::Person
  def initialize(name)
    @name = name
  end
  
  def print_owing(amount)
    print_banner
    puts "name:   #{@name}"
    puts "amount: #{amount}"
  end

  def print_banner
    puts '*******************'
  end
end
