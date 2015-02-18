class Refactoring::Chapter7MovingFeatures::AccountType
  attr_reader :interest_rate
  
  def initialize(interest_rate = 0)
    @interest_rate = interest_rate
  end

  def premium?
    true
  end

  def current?
    true
  end

  def overdraft_charge(account)
    if premium?
      result = 10
      result += (account.days_overdrawn - 7) * 0.85 if account.days_overdrawn > 7
      result
    elsif current?
      account.days_overdrawn * 1.82
    else
      account.days_overdrawn * 1.75
    end
  end
end
