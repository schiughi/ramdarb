class Lazy
  class << self
    def of(a)
      Lazy.new{ a }
    end

    def from(&block)
      Lazy.new(block)
    end
  end

  attr_reader :effect
  def initialize(&block)
    @effect = block
  end

  def map
    Lazy.new { yield effect.call }
  end

  def chain
    yield effect.call
  end

  def run
    effect.call
  end
end
