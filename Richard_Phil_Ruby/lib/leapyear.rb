class LeapYear
  # 0. Reference implementation
  # 1. Logic reversal

  def leap?(year)
    !is_common_year?(year)
  end

private

  def is_common_year?(year)
    if (year % 4 != 0)
      true
    elsif (year % 100 != 0)
      false
    elsif (year % 400 != 0)
      true
    else
      false
    end
  end

end
