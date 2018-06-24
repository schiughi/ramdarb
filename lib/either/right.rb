class Right < Either
  attr_reader :value
  def initialize(value)
    @value = value
  end

  def map
    Either.of(yield value)
  end

  def filter
    return Either.left(value) unless yield value
    self
  end

  def get_or_else(other)
    value
  end

  def or_else(arg)
    self
  end

  def chain
    yield value
  end

  def get_or_raise(arg)
    value
  end
end
