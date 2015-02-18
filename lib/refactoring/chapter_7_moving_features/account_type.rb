class Refactoring::Chapter7MovingFeatures::AccountType
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
