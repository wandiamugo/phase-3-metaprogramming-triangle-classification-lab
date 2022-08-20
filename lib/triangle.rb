class Triangle
  # write code here
  attr_accessor :size1, :size2, :size3

  def initialize(size1, size2, size3)
    @size1 = size1
    @size2 = size2
    @size3 = size3
  end

  def kind
    triangle = [@size1, @size2, @size3].uniq
    p triangle
    if @size1 <= 0 || @size2 <= 0 || @size3 <= 0
      raise TriangleError
    end
    if @size1 + @size2 <= @size3 || @size1 + @size3 <= @size2 || @size2 + @size3 <= @size1
      raise TriangleError
    end
    if triangle.size == 1
      :equilateral
    elsif triangle.size == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
