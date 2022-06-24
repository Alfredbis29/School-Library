class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} no implement method'#{__method__}'"
  end
end
