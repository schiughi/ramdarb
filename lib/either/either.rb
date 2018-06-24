class Either
  class << self
    def left(value)
      Left.new(value)
    end

    def right(value)
      Right.new(value)
    end

    def from_nullable(value)
      return Either.left(value) if value.nil?
      Either.right(value)
    end

    def of(value)
      Either.right(value)
    end
  end

  attr_reader :value
  def initialize(value)
    @value = value
  end

  def left?
    kind_of? Left
  end

  def right?
    kind_of? Right
  end

  alias_method :ok?, :right?
  alias_method :success?, :right?
  alias_method :ng?, :left?
  alias_method :failure?, :left?
end
