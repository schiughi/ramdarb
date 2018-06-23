class Just < Maybe
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def map
    Maybe.from(yield value)
  end

  def filter
    return Maybe.nothing unless yield value
    self
  end

  def get_or_else(another)
    value
  end
end
