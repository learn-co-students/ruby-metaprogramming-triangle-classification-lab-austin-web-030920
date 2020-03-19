

class Triangle
  # write code here

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if (@x + @y) <= @z || (@x + @z) <= @y || (@y + @z) <= @x
      raise TriangleError
    elsif @x == @y && @y == @z
      :equilateral
    elsif @x == @y || @x == @z || @y == @z
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a triangle!"
    end
  end

end
