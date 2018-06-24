class NothingValueError < StandardError; end

class Left < Either
  def initialize(value)
    @value = value
  end

  def map
    self
  end

  def filter
    self
  end

  def value
    raise NothingValueError.new("Can not extract the value of a Nothing.")
  end

  def get_or_else(other)
    other
  end

  def or_else
    yield @value
  end

  def chain
    self
  end

  def get_or_raise(a)
    raise StandardError.new(a)
  end
end
