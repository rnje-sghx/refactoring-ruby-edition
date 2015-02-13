class Refactoring::Chapter6ComposingMethods::Person
  def initialize(name, orders = [])
    @name   = name
    @orders = orders
  end

  def print_owing(previous_amount)
    outstanding = previous_amount * 1.2
    print_banner
    @orders.each do |order|
      outstanding += order.amount
    end
    print_details(outstanding)
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
