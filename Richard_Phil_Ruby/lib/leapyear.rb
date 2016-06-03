# encoding: utf-8
require_relative 'shadow'

class LeapYear
  # 0. Reference implementation
  # 1. Logic reversal
  # 2. The shadow adds instance variables!
  # 3. Method missing
  # 4. The shadow adds methods
  # 5. The shadow adds method_missing
  #
  # ## After the session
  #
  # 6. Misleading DSLs and monkey patching.  Because, well, it is Ruby after all.
  
  def initialize
    Shadow.new self
  end

  def leap?(dragon)
    leap dragon do
      roll = ⚂⚀
      did_leap_dragon? do
        yesss, go = ☕
        noooo, go = ☠
      end
    end
  end

end
