class Refactoring::Chapter6ComposingMethods::Person
  def initialize(name)
    @name = name
  end

  def print_owing
    outstanding = 0.0
    print_banner
    # calculate outstanding
    @orders.each do |order|
      outstanding += order.amount
    end
    print_details(outstanding)
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
