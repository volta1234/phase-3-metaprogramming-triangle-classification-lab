class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  class TriangleError < StandardError
  end

  def kind
    raise TriangleError if [a, b, c].any? { |side| side <= 0 }
    raise TriangleError if (a+b<=c) || (a+c<=b) || (b+c<=a)

    return :equilateral if a == b && b == c
    return :isosceles if a == b || a == c || b == c
    :scalene
  end
end

triangle1 = Triangle.new(0,0,0)