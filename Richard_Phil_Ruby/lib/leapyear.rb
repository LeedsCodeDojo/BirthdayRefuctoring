require_relative 'shadow'

class LeapYear
  # 0. Reference implementation
  # 1. Logic reversal
  # 2. The shadow adds instance variables!
  # 3. Method missing
  
  def initialize
    Shadow.new(self)
  end

  def llllll?(year)
    !is_common_year?(year)
  end

  def method_missing(name, *args, &block)
    if (name == :leap?)
      llllll?(*args)
    else
      super
    end
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
