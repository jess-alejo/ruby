# frozen_string_literal: true

class Vector
  attr_accessor :x, :y, :z

  def initialize(*args)
    @x, @y, @z = args.flatten
  end

  def ==(other)
    x == other.x && y == other.y && z == other.z
  end

  def +(other)
    Vector.new(x + other.x, y + other.y, z + other.z)
  end

  def -(other)
    Vector.new(x - other.x, y - other.y, z - other.z)
  end

  def dot(other)
    x * other.x + y * other.y + z * other.z
  end

  def cross(other)
    a = y * other.z - z * other.y
    b = z * other.x - x * other.z
    c = x * other.y - y * other.x
    Vector.new(a, b, c)
  end

  def magnitude
    Math.sqrt(x**2 + y**2 + z**2)
  end

  def to_s
    "<#{x}, #{y}, #{z}>"
  end

  def to_a
    [x, y, z]
  end
end
