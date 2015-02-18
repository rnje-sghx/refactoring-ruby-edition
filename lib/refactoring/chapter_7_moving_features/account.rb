class Refactoring::Chapter7MovingFeatures::Account
  extend Forwardable

  def_delegator :@account_type, :interest_rate, :interest_rate=

  def initialize(account_type, days_overdrawn = 0)
    @account_type   = account_type
    @days_overdrawn = days_overdrawn
  end

  def bank_charge
    result = 4.5
    result += @account_type.overdraft_charge(self) if @days_overdrawn > 0
    result
  end

  def interest_for_amount_days(amount, days)
    interest_rate * amount * days / 365;
  end

  def interest_rate
    @account_type.interest_rate
  end
end
