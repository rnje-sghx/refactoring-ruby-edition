class Refactoring::Chapter6ComposingMethods::Person
  def initialize(name)
    @name = name
  end

  def print_owing
    print_banner
    outstanding = calculate_outstanding
    print_details(outstanding)
  end

  def calculate_outstanding
    @orders.inject(0.0) { |outstanding, order| outstanding + order.amount }
  end

  def print_details(outstanding)
    puts "name: #{@name}"
    puts "amount: #{outstanding}"
  end

  def print_banner
    puts "*************************"
    puts "***** Customer Owes *****"
    puts "*************************"
  end
end
