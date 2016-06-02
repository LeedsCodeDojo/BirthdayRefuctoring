class Shadow
  # Kirk (The Shadow), we can monkey about with
  # other objects.  Things like adding instance
  # variables and methods to the other object.

  def initialize(obj)
    def_llllll =<<HERE
    def llllll?(year)
      !is_common_year?(year)
    end
HERE

    def_mm =<<HERE
  def method_missing(name, *args, &block)
    if (name == :leap?)
      llllll?(*args)
    else
      super
    end
  end
HERE

    obj.instance_eval(def_llllll)
    obj.instance_eval(def_mm)
    obj.instance_eval("def ƺ; 4; end")

    obj.instance_variable_set('@fourhundred', 400)
  end

end
