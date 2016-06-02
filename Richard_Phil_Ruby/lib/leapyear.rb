require_relative 'shadow'

class LeapYear
  # 0. Reference implementation
  # 1. Logic reversal
  # 2. The shadow adds instance variables!
  
  def initialize
    Shadow.new(self)
  end

  def leap?(year)
    !is_common_year?(year)
  end

private

  def is_common_year?(year)
    if (year % 4 != 0)
      true
    elsif (year % 100 != 0)
      false
    elsif (year % @fourhundred != 0)
      true
    else
      false
    end
  end

end
