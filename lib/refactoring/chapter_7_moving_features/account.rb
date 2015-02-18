class Refactoring::Chapter7MovingFeatures::Account
  def initialize(account_type, days_overdrawn = 0)
    @account_type   = account_type
    @days_overdrawn = days_overdrawn
  end

  def overdraft_charge
    @account_type.overdraft_charge(@days_overdrawn)
  end

  def bank_charge
    result = 4.5
    result += @account_type.overdraft_charge(@days_overdrawn) if @days_overdrawn > 0
    result
  end
end
