class Refactoring::Chapter7MovingFeatures::Account
  def initialize(account_type, days_overdrawn = 0)
    @account_type   = account_type
    @days_overdrawn = days_overdrawn
  end

  def overdraft_charge
    if @account_type.premium?
      result = 10
      result += (@days_overdrawn - 7) * 0.85 if @days_overdrawn > 7
      result
    elsif @account_type.current?
      @days_overdrawn * 1.82
    else
      @days_overdrawn * 1.75
    end
  end

  def bank_charge
    result = 4.5
    result += overdraft_charge if @days_overdrawn > 0
    result
  end
end
