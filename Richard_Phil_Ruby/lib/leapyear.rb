# encoding: utf-8
require_relative 'shadow'

class LeapYear
  # 0. Reference implementation
  # 1. Logic reversal
  # 2. The shadow adds instance variables!
  # 3. Method missing
  # 4. The shadow adds methods
  # 5. The shadow adds method_missing
  
  def initialize
    Shadow.new(self)
  end

private

  def is_common_year?(year)
    if (year % ƺ != 0)
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
