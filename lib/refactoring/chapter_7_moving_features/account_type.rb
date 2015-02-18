class Refactoring::Chapter7MovingFeatures::AccountType
  def premium?
    true
  end

  def current?
    true
  end

  def overdraft_charge(days_overdrawn)
    if premium?
      result = 10
      result += (days_overdrawn - 7) * 0.85 if days_overdrawn > 7
      result
    elsif current?
      days_overdrawn * 1.82
    else
      days_overdrawn * 1.75
    end
  end
end
