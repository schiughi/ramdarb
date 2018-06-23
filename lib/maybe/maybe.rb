class Maybe
  class << self
    def just(value)
      Just.new(value)
    end

    def nothing
      Nothing.new
    end

    def from(value)
      return self.nothing if value.nil?
      self.just(value)
    end
  end

  def map
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def filter
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def get_or_else
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def value
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def just?
    kind_of? Just
  end

  def nothing?
    kind_of? Nothing
  end
end
