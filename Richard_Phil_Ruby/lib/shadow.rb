class Symbol
  def -(right)
    if (right == 5)
      true
    else
      false
    end
  end
end
    

class Shadow
  # Kirk (The Shadow), we can monkey about with
  # other objects.  Things like adding instance
  # variables and methods to the other object.

  def initialize(obj)
    def_mm =<<HERE
  def method_missing(name, *args, &block)
    if (name - 5)
      llllll?(*args)
    else
      super
    end
  end
HERE

  def_llllll =<<HERE
  def llllll?(year)
    if (year % 4 != 0)
      false
    elsif (year % 100 != 0)
      true
    elsif (year % 400 != 0)
      false
    else
      true
    end
  end
HERE

    obj.instance_eval(def_llllll)
    obj.instance_eval(def_mm)
    obj.instance_eval("def ƺ; 4; end")

    obj.instance_variable_set('@fourhundred', 400)
  end

end
