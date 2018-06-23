class Just < Maybe
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def map
    Just.from(yield value)
  end

  def filter
    return Just.from(nil) unless yield value
    self
  end

  def get_or_else(another)
    value
  end
end
