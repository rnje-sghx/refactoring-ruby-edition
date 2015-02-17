class Refactoring::Chapter6ComposingMethods::Order
  def initialize(name, orders = [])
    @name   = name
    @orders = orders
  end

  def print_owing(previous_amount)
    print_banner
    outstanding = calculate_outstanding(previous_amount * 1.2)
    print_details(outstanding)
  end

  def calculate_outstanding(outstanding)
    @orders.inject(outstanding) { |outstanding_amount, order| outstanding_amount + order.amount }
  end

  def print_details(outstanding)
    puts "name: #{@name}"
    puts "amount: #{outstanding}"
  end

  def print_banner
    puts '*************************'
    puts '***** Customer Owes *****'
    puts '*************************'
  end
end
