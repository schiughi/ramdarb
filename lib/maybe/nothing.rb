class NothingValueError < StandardError; end

class Nothing < Maybe
  def map
    self
  end

  def filter
    self
  end

  def get_or_else(another)
    another
  end

  def value
    raise NothingValueError.new("Can not extract the value of a Nothing.")
  end
end
