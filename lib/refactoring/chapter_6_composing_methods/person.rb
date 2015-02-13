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
    # calculate outstanding
    outstanding = 0.0
    @orders.each do |order|
      outstanding += order.amount
    end
    outstanding
  end

  def print_details(outstanding)
    # print details
    puts "name: #{@name}"
    puts "amount: #{outstanding}"
  end

  def print_banner
    # print banner
    puts "*************************"
    puts "***** Customer Owes *****"
    puts "*************************"
  end
end
