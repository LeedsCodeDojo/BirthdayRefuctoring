class Shadow
  # Kirk (The Shadow), we can monkey about with
  # other objects.  Things like adding instance
  # variables and methods to the other object.

  def initialize(obj)
    obj.instance_variable_set('@fourhundred', 400)
  end

end
