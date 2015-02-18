class Refactoring::Chapter7MovingFeatures::Account
  def initialize(account_type, days_overdrawn = 0, interest_rate = 0)
    @account_type   = account_type
    @days_overdrawn = days_overdrawn
    @interest_rate  = interest_rate
  end

  def bank_charge
    result = 4.5
    result += @account_type.overdraft_charge(self) if @days_overdrawn > 0
    result
  end

  def interest_for_amount_days(amount, days)
    @interest_rate * amount * days / 365;
  end
end
